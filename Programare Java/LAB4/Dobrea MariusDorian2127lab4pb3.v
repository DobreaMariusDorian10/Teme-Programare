//DobreaMariusDorian2127lab4pb3
/*Scrieți o clasă Java care modelează o matrice de valori întregi. Atât dimensiunile matricii cât și tabloul
bidimensional de elemente sunt atribute private în clasă, accesate prin intermediul unor metode publice setter
și getter. Includeți în clasă metode de afișare a matricii, de calcul și retur a numărului de grupuri de elemente (9
valori învecinate), care nu diferă cu mai mult de 5% față de un anumit prag.  */
import java.util.*;
final public class Matrix {
    private  int M;             // Numar linii
    private  int N;             // NR coloane
    private  int[][] data;   // M-N Tablou
    public Matrix(int M, int N) {
        this.M = M;
        this.N = N;
        data = new int[M][N];
    }
    public int getM() {
		return M;
	}
	public void setM(int M) {
		this.M = M;
	}
	 public int getN() {
			return N;
		}
		public void setN(int N) {
			this.N= N;
		}
		public void setvalori() {
			for(int i=0;i<M;i++)
				for(int j=0;j<N;j++) {
					 Scanner val = new Scanner(System.in);
					 data[i][j]= val.nextInt();	}
		}// introducem fiecare valoare in matrice
    public void show() {
    for (int i = 0; i < M; i++) { //=linii
        for (int j = 0; j < N; j++) { //=coloane
           System.out.print(data[i][j] + " ");
        }
        System.out.println(); //change line on console as row comes to end in the matrix.
     }
    
}
    public void show2(int x) {
    	double y=x-5*x/10;
    	double z=x+5*x/10;
    	int min = (int) y;
    	int max = (int) z;
    	 System.out.print(" Numarul de grupuri de elemente care nu diferă cu mai mult de 5% față de PRAG: ");
        for (int i = 0; i < M; i++) { //=linii
            for (int j = 0; j < N; j++) { //=coloane
            	if(data[i][j]>y & data[i][j]<z)
               System.out.print(data[i][j] + " ");
            }          
         }
        
    }
}
public class Problema3 {
	public static void main(String[] args) {
   int M;// number of rows
   int N;// number of columns
   int Prag;
   Scanner scan = new Scanner(System.in);
   System.out.print("Introduceti numarul de linii: ");
   M = scan.nextInt();
   System.out.print("Introduceti numarul de Coloane: ");
   N= scan.nextInt();
    Matrix D = new Matrix(M,N);// array M-N 
    D.setvalori();
    D.show();  
    System.out.print("Introduceti valoarea de prag: ");
    Prag= scan.nextInt();
    D.show2(Prag);
	}
}