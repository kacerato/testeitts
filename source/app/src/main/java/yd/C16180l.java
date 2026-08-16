package yd;

import com.mokiat.data.front.error.WFException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class C16180l implements InterfaceC16171c {
    @Override
    public void a(BufferedReader bufferedReader, InterfaceC16172d interfaceC16172d) throws WFException, IOException {
        new C16179k(interfaceC16172d).i(bufferedReader);
    }

    @Override
    public void b(InputStream inputStream, InterfaceC16172d interfaceC16172d) throws WFException, IOException {
        a(new BufferedReader(new InputStreamReader(inputStream)), interfaceC16172d);
    }
}
