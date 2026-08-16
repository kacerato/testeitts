package h4;

import com.itsmagic.engine.Activities.Editor.Extensions.VCS.HashData;
import java.io.File;

public class i extends AbstractC13426c {
    public i(String format) {
        super(format);
    }

    @Override
    public EnumC13424a a(File file, HashData data) {
        String str = data.fileData;
        String x10 = X7.a.x(file);
        if (str == null && x10 == null) {
            data.fileData = x10;
            return EnumC13424a.DONT_SAVE_DONT_NOTIFY;
        }
        if (str == null && x10 != null) {
            data.fileData = x10;
            return EnumC13424a.SAVE_NOTIFY;
        }
        if (str != null && x10 == null) {
            data.fileData = x10;
            return EnumC13424a.SAVE_NOTIFY;
        }
        if (str.equals(x10)) {
            return EnumC13424a.SAVE_DATE_BUT_DONT_NOTIFY;
        }
        data.fileData = x10;
        return EnumC13424a.SAVE_NOTIFY;
    }
}
