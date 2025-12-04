import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

class SkoleKlasse {
  private final String id;
  private final String name;
  private Lokale primaryRoom;
  private final List<Time> timer = new ArrayList();
  
  public SkoleKlasse(String id, String name, Lokale primaryRoom) {
    this.id = Objects.requireNonNull(id);
    this.name = Objects.requireNonNull(name);
    this.primaryRoom = Objects.requireNonNull(primaryRoom);
  }
  
   public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Lokale getPrimaryRoom() {
        return primaryRoom;
    }

    public void setPrimaryRoom(Lokale primaryRoom) {
        this.primaryRoom = Objects.requireNonNull(primaryRoom);
    }

    public List<Time> getLectures() {
        return timer;
    }

    public void addLecture(Time time) {
        timer.add(Objects.requireNonNull(time));
    }

    @Override
    public String toString() {
        return "SchoolClass{" +
               "id='" + id + '\'' +
               ", name='" + name + '\'' +
               ", primaryRoom=" + primaryRoom.getName() +
               '}';
    }
}
