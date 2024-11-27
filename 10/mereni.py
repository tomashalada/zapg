import matplotlib.pyplot as plt

class Mereni:
    def __init__(self, casy, data, mereni_nazev):
        """
        Constructor for Mereni class.
        :param casy: Times (x-axis data)
        :param data: Measurement data (y-axis data)
        :param mereni_nazev: Name of the measurement
        """
        self.casy = casy
        self.data = data
        self.mereni_nazev = mereni_nazev
        self._index = None  # private-like attribute (Python doesn't enforce access levels)

    @property
    def index(self):
        """Read-only property for index."""
        return self._index

    def vykreslit(self):
        """
        Method to plot the data and save the plot as a PNG file.
        :return: Boolean indicating successful plot generation
        """
        plt.plot(self.casy, self.data)
        plt.grid(True)
        plt.title(self.mereni_nazev)

        nazev_vystupniho_souboru = f"{self.mereni_nazev}.png"
        plt.savefig(nazev_vystupniho_souboru)
        plt.show()
        return True  # Indicating the plot was successfully generated
