import java.util.Objects;

class Lokale {
  private final String id;
  private final String name;
  private final int capacity;

  public Lokale(String id, String name, int capacity) {
    this.id = Objects.requireNonNull(id);
    this.name = Objects.requireNonNull(name);
    this.capacity = Objects.requireNonNull(capacity);
  }

  public String getId() {
    return id;
  }

  public String getName() {
    return name;
  }

  public int getCapacity() {
    return capacity;
  }

  @Override
    public String toString() {
    return "Room{" +
      "id='" + id + '\'' +
      ", name='" + name + '\'' +
      ", capacity=" + capacity +
      '}';
  }
}
