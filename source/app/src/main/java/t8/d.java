package t8;

import androidx.annotation.NonNull;

public class d extends d8.e {
    public d() {
        super(true);
    }

    @Override
    public String h() {
        return j(false);
    }

    @Override
    public String j(boolean hideLine) {
        return "=====-ERROR-====\n" + super.j(hideLine) + "\n================\n\n";
    }

    @Override
    @NonNull
    public String toString() {
        return j(false);
    }

    public d(String text, int line) {
        super(true);
        this.f84381a = text;
        this.f84383c = line;
    }
}
