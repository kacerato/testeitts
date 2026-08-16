package h4;

import com.itsmagic.engine.Activities.Editor.Extensions.VCS.HashData;
import java.io.File;

public class h extends AbstractC13426c {
    public h(String format) {
        super(format);
    }

    @Override
    public EnumC13424a a(File file, HashData data) {
        if (data.fileSizeBytes == file.length()) {
            return EnumC13424a.SAVE_DATE_BUT_DONT_NOTIFY;
        }
        data.fileSizeBytes = file.length();
        return EnumC13424a.SAVE_NOTIFY;
    }
}
