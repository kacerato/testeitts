package w3;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Comparator;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class AabZipHelper {

    public static void writeDirToZip(File rootDir, File file, ZipOutputStream zos) throws IOException {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                Arrays.sort(listFiles, Comparator.comparing(File::getName));
                for (File child : listFiles) {
                    writeDirToZip(rootDir, child, zos);
                }
            }
            return;
        }

        String entryName = rootDir.toPath().relativize(file.toPath()).toString().replace('\\', '/');
        ZipEntry zipEntry = new ZipEntry(entryName);

        boolean isStored = entryName.endsWith(".so") || entryName.startsWith("base/lib/") || entryName.contains("/lib/");
        if (isStored) {
            zipEntry.setMethod(ZipEntry.STORED);
            long fileLength = file.length();
            zipEntry.setSize(fileLength);
            zipEntry.setCompressedSize(fileLength);

            CRC32 crc = new CRC32();
            try (FileInputStream fis = new FileInputStream(file)) {
                byte[] buf = new byte[8192];
                int n;
                while ((n = fis.read(buf)) != -1) {
                    crc.update(buf, 0, n);
                }
            }
            zipEntry.setCrc(crc.getValue());
        } else {
            zipEntry.setMethod(ZipEntry.DEFLATED);
        }

        zos.putNextEntry(zipEntry);
        try (FileInputStream fis = new FileInputStream(file)) {
            byte[] buf = new byte[8192];
            int n;
            while ((n = fis.read(buf)) != -1) {
                zos.write(buf, 0, n);
            }
        }
        zos.closeEntry();
    }
}
