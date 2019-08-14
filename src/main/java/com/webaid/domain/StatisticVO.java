package com.webaid.domain;

public class StatisticVO {
	private int no;
	private String url;
	private String browser;
	private String device;
	private String connectdate;

	public StatisticVO() {
		super();
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getBrowser() {
		return browser;
	}

	public void setBrowser(String browser) {
		this.browser = browser;
	}

	public String getDevice() {
		return device;
	}

	public void setDevice(String device) {
		this.device = device;
	}

	public String getConnectdate() {
		return connectdate;
	}

	public void setConnectdate(String connectdate) {
		this.connectdate = connectdate;
	}

	@Override
	public String toString() {
		return "StatisticVO [no=" + no + ", url=" + url + ", browser=" + browser + ", device=" + device
				+ ", connectdate=" + connectdate + "]";
	}

}
