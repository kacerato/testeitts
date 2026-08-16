package xd;

import com.mokiat.data.front.error.WFException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import wd.C15992e;

public class C16087g implements InterfaceC16081a {

    public C15992e f128106a;

    @Override
    public C16084d a(BufferedReader bufferedReader) throws WFException, IOException {
        return new C16086f().o(bufferedReader, getLimits());
    }

    @Override
    public C16084d b(InputStream inputStream) throws WFException, IOException {
        return a(new BufferedReader(new InputStreamReader(inputStream)));
    }

    @Override
    public void c(C15992e c15992e) {
        this.f128106a = c15992e;
    }

    @Override
    public C15992e getLimits() {
        return this.f128106a;
    }
}
