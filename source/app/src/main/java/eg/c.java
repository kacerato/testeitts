package Eg;

import Bg.r;
import Eg.h;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import net.lingala.zip4j.exception.ZipException;
import yg.C16188d;

public abstract class c<T> extends h<T> {

    public class a implements Comparator<Bg.j> {
        public a() {
        }

        @Override
        public int compare(Bg.j jVar, Bg.j jVar2) {
            if (jVar.j().equals(jVar2.j())) {
                return 0;
            }
            return jVar.T() < jVar2.T() ? -1 : 1;
        }
    }

    public c(h.b bVar) {
        super(bVar);
    }

    public void k(boolean z10, File file, File file2) throws ZipException {
        if (z10) {
            q(file, file2);
        } else if (!file2.delete()) {
            throw new ZipException("Could not delete temporary file");
        }
    }

    public List<Bg.j> l(List<Bg.j> list) {
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList, new a());
        return arrayList;
    }

    public long m(RandomAccessFile randomAccessFile, OutputStream outputStream, long j10, long j11, Dg.a aVar, int i10) throws IOException {
        Fg.c.g(randomAccessFile, outputStream, j10, j10 + j11, aVar, i10);
        return j11;
    }

    public final int n(List<Bg.j> list, Bg.j jVar) throws ZipException {
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (list.get(i10).equals(jVar)) {
                return i10;
            }
        }
        throw new ZipException("Could not find file header in list of central directory file headers");
    }

    public long o(List<Bg.j> list, Bg.j jVar, r rVar) throws ZipException {
        int n10 = n(list, jVar);
        return n10 == list.size() + (-1) ? C16188d.f(rVar) : list.get(n10 + 1).T();
    }

    public File p(String str) {
        SecureRandom secureRandom = new SecureRandom();
        File file = new File(str + secureRandom.nextInt(10000));
        while (file.exists()) {
            file = new File(str + secureRandom.nextInt(10000));
        }
        return file;
    }

    public final void q(File file, File file2) throws ZipException {
        if (!file.delete()) {
            throw new ZipException("cannot delete old zip file");
        }
        if (!file2.renameTo(file)) {
            throw new ZipException("cannot rename modified zip file");
        }
    }

    public void r(List<Bg.j> list, r rVar, Bg.j jVar, long j10) throws ZipException {
        int n10 = n(list, jVar);
        if (n10 == -1) {
            throw new ZipException("Could not locate modified file header in zipModel");
        }
        while (true) {
            n10++;
            if (n10 >= list.size()) {
                return;
            }
            Bg.j jVar2 = list.get(n10);
            jVar2.a0(jVar2.T() + j10);
            if (rVar.n() && jVar2.q() != null && jVar2.q().e() != -1) {
                jVar2.q().j(jVar2.q().e() + j10);
            }
        }
    }
}
