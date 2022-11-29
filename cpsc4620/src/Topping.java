public class Topping
{
	/*
	 * 
	 * Standard Java object class. 
	 *  
	 * This file can be modified to match your design, or you can keep it as-is.
	 *
	 * 
	 * */
	
	private int TopID;
	private String TopName;
	private double CustPrice;
	private double PerUnit;
	private int CurINVT;
	private double SmAMT;
	private double MedAMT;
	private double LgAMT;
	private double XLAMT;


	
	public Topping(int topID, String topName, double custPrice, double perUnit, int curINVT,
				   double smAMT, double medAMT, double lgAMT, double xLAMT) {
		TopID = topID;
		TopName = topName;
		CustPrice = custPrice;
		PerUnit = perUnit;
		CurINVT = curINVT;
		SmAMT = smAMT;
		MedAMT = medAMT;
		LgAMT = lgAMT;
		XLAMT = xLAMT;

	}

	public int getTopID() {
		return TopID;
	}

	public String getTopName() {
		return TopName;
	}

	public double getCustPrice() {
		return CustPrice;
	}

	public double getPerUnit() {
		return PerUnit;
	}

	public int getCurINVT() {
		return CurINVT;
	}

	public double getSmAMT() {
		return SmAMT;
	}

	public double getMedAMT() {
		return MedAMT;
	}

	public double getLgAMT() {
		return LgAMT;
	}

	public double getXLAMT() {
		return XLAMT;
	}


	public void setTopID(int topID) {
		TopID = topID;
	}

	public void setTopName(String topName) {
		TopName = topName;
	}

	public void setCustPrice(double custPrice) {
		CustPrice = custPrice;
	}

	public void setPerUnit(double perUnit) {
		PerUnit = perUnit;
	}

	public void setCurINVT(int curINVT) {
		CurINVT = curINVT;
	}

	public void setSmAMT(double SmAMT) {
		SmAMT = SmAMT;
	}

	public void setMedAMT(double medAMT) {
		MedAMT = medAMT;
	}

	public void setLgAMT(double lgAMT) {
		LgAMT = lgAMT;
	}

	public void setXLAMT(double xLAMT) {
		XLAMT = xLAMT;
	}



	@Override
	public String toString() {
		return "Topping [TopID=" + TopID + ", TopName=" + TopName + ", CustPrice=" + CustPrice +
				", PricePerUnit=" + PerUnit + ", CurINVT=" + CurINVT + ", SmAMT=" + SmAMT +
				", MedAMT=" + MedAMT + ", LgAMT=" + LgAMT + ", XLAMT=" + XLAMT + "]";
	}
	
	

}
