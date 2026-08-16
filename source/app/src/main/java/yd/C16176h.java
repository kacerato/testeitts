package yd;

import com.mokiat.data.front.error.WFException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class C16176h implements InterfaceC16169a {
    @Override
    public void a(BufferedReader bufferedReader, InterfaceC16170b interfaceC16170b) throws WFException, IOException {
        new C16175g(interfaceC16170b).o(bufferedReader);
    }

    @Override
    public void b(InputStream inputStream, InterfaceC16170b interfaceC16170b) throws WFException, IOException {
        a(new BufferedReader(new InputStreamReader(inputStream)), interfaceC16170b);
    }
}
