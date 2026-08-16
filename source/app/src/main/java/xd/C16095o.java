package xd;

import com.mokiat.data.front.error.WFException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import wd.C15993f;

public class C16095o implements InterfaceC16082b {

    public C15993f f128128a;

    @Override
    public C16091k a(BufferedReader bufferedReader) throws WFException, IOException {
        return new C16094n().p(bufferedReader, getLimits());
    }

    @Override
    public C16091k b(InputStream inputStream) throws WFException, IOException {
        return a(new BufferedReader(new InputStreamReader(inputStream)));
    }

    @Override
    public void c(C15993f c15993f) {
        this.f128128a = c15993f;
    }

    @Override
    public C15993f getLimits() {
        return this.f128128a;
    }
}
