import math

v_z = 340.3

def calculate_distance(vrijeme, v_z):
    s = ((v_z*vrijeme)/2)/10000
    return s

def temperature_correction(temperatura, vrijeme):
    v_z_kor = 331.3+0.606*temperatura
    s = calculate_distance(vrijeme, v_z_kor)
    return s

def geometry_correction(h, v_z, vrijeme):
    s = calculate_distance(vrijeme, v_z)
    d = math.sqrt(s ** 2 - h ** 2)
    return d

def geo_and_temp_correction(temperatura, vrijeme, h):
     s = temperature_correction(temperatura, vrijeme)
     d = math.sqrt(s ** 2 - h ** 2)
     return d

vrijeme = int(input("Unesite vrijeme u us: "))
temperatura = float(input("Unesite temperaturu: "))
h = float(input("Unesite razmak između T i R: "))

udaljenost_bez_korekcije = calculate_distance(vrijeme, v_z)
udaljenost_s_temp_korekcijom = temperature_correction(temperatura, vrijeme)
udaljenost_s_geo_korekcijom = geometry_correction(h, v_z, vrijeme)
udaljenost_s_obje_korekcije = geo_and_temp_correction(temperatura, vrijeme, h)

print(f"Udaljenost bez korekcije: {udaljenost_bez_korekcije}, temp_korekcija: {udaljenost_s_temp_korekcijom}, geo_korek: {udaljenost_s_geo_korekcijom}, obje_korekcije: {udaljenost_s_obje_korekcije}")