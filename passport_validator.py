import sys
def check_sybil_resistance(score, threshold=20.0):
    return score >= threshold
if __name__ == "__main__":
    print(f"Validación Sybil: {check_sybil_resistance(float(sys.argv[1]))}")
