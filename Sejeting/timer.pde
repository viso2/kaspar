import java.time.LocalDateTime;
import java.util.Objects;
import java.util.UUID;

class Time {
  private final String id;
  private final SkoleKlasse schoolClass;
  private final LocalDateTime startTime;
  private final LocalDateTime endTime;
  private final Lokale room;

  public Time(SkoleKlasse schoolClass, LocalDateTime startTime, LocalDateTime endTime, Lokale room) {
    if (endTime.isBefore(startTime) || endTime.isEqual(startTime)) {
      throw new IllegalArgumentException("endTime must be after startTime");
    }
    
    this.id = UUID.randomUUID().toString();
    this.schoolClass = Objects.requireNonNull(schoolClass);
    this.startTime = Objects.requireNonNull(startTime);
    this.endTime = Objects.requireNonNull(endTime);
    this.room = Objects.requireNonNull(room);
  }
  
      public String getId() {
        return id;
    }

    public SkoleKlasse getSchoolClass() {
        return schoolClass;
    }

    public LocalDateTime getStartTime() {
        return startTime;
    }

    public LocalDateTime getEndTime() {
        return endTime;
    }

    public Lokale getRoom() {
        return room;
    }

    public boolean overlaps(Time other) {
        // Overlap if start < other.end AND other.start < end
        return this.startTime.isBefore(other.endTime) &&
               other.startTime.isBefore(this.endTime);
    }

    @Override
    public String toString() {
        return "Lecture{" +
               "id='" + id + '\'' +
               ", class=" + schoolClass.getName() +
               ", startTime=" + startTime +
               ", endTime=" + endTime +
               ", room=" + room.getName() +
               '}';
    }
}
