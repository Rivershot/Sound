package web.dto;

public class Sound {

	private int soundno;
	private String name;
	private String time;
	private int tempo;
	
	public Sound() {}
	
	@Override
	public String toString() {
		return "Sound [soundno=" + soundno + ", name=" + name + ", time=" + time + ", tempo=" + tempo + "]";
	}

	public Sound(int soundno, String name, String time, int tempo) {
		super();
		this.soundno = soundno;
		this.name = name;
		this.time = time;
		this.tempo = tempo;
	}

	public int getSoundno() {
		return soundno;
	}

	public void setSoundno(int soundno) {
		this.soundno = soundno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getTempo() {
		return tempo;
	}

	public void setTempo(int tempo) {
		this.tempo = tempo;
	}
	
	
	
}
