package t8;

import androidx.annotation.NonNull;

public class g extends d8.e {
    public g() {
        super(false);
    }

    @Override
    public String h() {
        return j(false);
    }

    @Override
    public String j(boolean hideLine) {
        return "====-WARNING-====\n" + super.j(hideLine) + "\n=================\n\n";
    }

    @Override
    @NonNull
    public String toString() {
        return j(false);
    }

    public g(String text, int line) {
        super(false);
        this.f84381a = text;
        this.f84383c = line;
    }
}
