package com.kk.domain;

// 컨택 DTO
public class Contact {
	private int contactId; // 컨택번호 pk
	private int hostId; // 호스트번호 fk from member.memberId
	private int guestId; // 게스트번호 fk from member.memberId
	private String regiDate; // 등록일
	private String contactIntro; // 컨택소개
	private String lotation; // 장소
	private String meetingTime; // 시간
	private int startValue; // 시작가
	private int lastValue; // 최종가격
	private int qrCheck; // 만남확인 {0:미완, 1:완료}

	public Contact() {
	}

	public Contact(int contactId, int hostId, int guestId, String regiDate, String contactIntro, String lotation,
			String meetingTime, int startValue, int lastValue, int qrCheck) {
		super();
		this.contactId = contactId;
		this.hostId = hostId;
		this.guestId = guestId;
		this.regiDate = regiDate;
		this.contactIntro = contactIntro;
		this.lotation = lotation;
		this.meetingTime = meetingTime;
		this.startValue = startValue;
		this.lastValue = lastValue;
		this.qrCheck = qrCheck;
	}

	public int getContactId() {
		return contactId;
	}

	public void setContactId(int contactId) {
		this.contactId = contactId;
	}

	public int getHostId() {
		return hostId;
	}

	public void setHostId(int hostId) {
		this.hostId = hostId;
	}

	public int getGuestId() {
		return guestId;
	}

	public void setGuestId(int guestId) {
		this.guestId = guestId;
	}

	public String getRegiDate() {
		return regiDate;
	}

	public void setRegiDate(String regiDate) {
		this.regiDate = regiDate;
	}

	public String getContactIntro() {
		return contactIntro;
	}

	public void setContactIntro(String contactIntro) {
		this.contactIntro = contactIntro;
	}

	public String getLotation() {
		return lotation;
	}

	public void setLotation(String lotation) {
		this.lotation = lotation;
	}

	public String getMeetingTime() {
		return meetingTime;
	}

	public void setMeetingTime(String meetingTime) {
		this.meetingTime = meetingTime;
	}

	public int getStartValue() {
		return startValue;
	}

	public void setStartValue(int startValue) {
		this.startValue = startValue;
	}

	public int getLastValue() {
		return lastValue;
	}

	public void setLastValue(int lastValue) {
		this.lastValue = lastValue;
	}

	public int getQrCheck() {
		return qrCheck;
	}

	public void setQrCheck(int qrCheck) {
		this.qrCheck = qrCheck;
	}

	@Override
	public String toString() {
		return "Contact [contactId=" + contactId + ", hostId=" + hostId + ", guestId=" + guestId + ", regiDate="
				+ regiDate + ", contactIntro=" + contactIntro + ", lotation=" + lotation + ", meetingTime="
				+ meetingTime + ", startValue=" + startValue + ", lastValue=" + lastValue + ", qrCheck=" + qrCheck
				+ "]";
	}

}
