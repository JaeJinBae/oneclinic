package com.webaid.domain;

public class AdviceVO {
	private int no;
	private String title;
	private String content;
	private String writer;
	private String regdate;
	private String phone;
	private int cnt;
	private String pwtype;
	private String pw;
	private String replytype;
	private String replytime;
	private String reply;

	public AdviceVO() {
		super();
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public String getPwtype() {
		return pwtype;
	}

	public void setPwtype(String pwtype) {
		this.pwtype = pwtype;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getReplytype() {
		return replytype;
	}

	public void setReplytype(String replytype) {
		this.replytype = replytype;
	}

	public String getReplytime() {
		return replytime;
	}

	public void setReplytime(String replytime) {
		this.replytime = replytime;
	}

	public String getReply() {
		return reply;
	}

	public void setReply(String reply) {
		this.reply = reply;
	}

	@Override
	public String toString() {
		return "AdviceVO [no=" + no + ", title=" + title + ", content=" + content + ", writer=" + writer + ", regdate="
				+ regdate + ", phone=" + phone + ", cnt=" + cnt + ", pwtype=" + pwtype + ", pw=" + pw + ", replytype="
				+ replytype + ", replytime=" + replytime + ", reply=" + reply + "]";
	}

}
