package androidx.constraintlayout.core.widgets;

public class Rectangle {
    public int height;
    public int width;

    public int f32553x;

    public int f32554y;

    public boolean contains(int i10, int i11) {
        int i12;
        int i13 = this.f32553x;
        return i10 >= i13 && i10 < i13 + this.width && i11 >= (i12 = this.f32554y) && i11 < i12 + this.height;
    }

    public int getCenterX() {
        return (this.f32553x + this.width) / 2;
    }

    public int getCenterY() {
        return (this.f32554y + this.height) / 2;
    }

    public void grow(int i10, int i11) {
        this.f32553x -= i10;
        this.f32554y -= i11;
        this.width += i10 * 2;
        this.height += i11 * 2;
    }

    public boolean intersects(Rectangle rectangle) {
        int i10;
        int i11;
        int i12 = this.f32553x;
        int i13 = rectangle.f32553x;
        return i12 >= i13 && i12 < i13 + rectangle.width && (i10 = this.f32554y) >= (i11 = rectangle.f32554y) && i10 < i11 + rectangle.height;
    }

    public void setBounds(int i10, int i11, int i12, int i13) {
        this.f32553x = i10;
        this.f32554y = i11;
        this.width = i12;
        this.height = i13;
    }
}
