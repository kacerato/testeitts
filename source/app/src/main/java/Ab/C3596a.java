package ab;

import K8.f;
import ub.g;

public class C3596a extends f {

    public Object f31975b;

    public g f31976c;

    public InterfaceC3597b f31977d;

    public float f31978e;

    public String f31979g;

    public C3596a(Object userData, g texture, InterfaceC3597b genQueueListener) {
        this.f31978e = 80.0f;
        this.f31975b = userData;
        this.f31976c = texture;
        this.f31977d = genQueueListener;
    }

    public String d() {
        return this.f31979g;
    }

    public float getBias() {
        return this.f31978e;
    }

    public void setBias(float bias) {
        this.f31978e = bias;
    }

    public C3596a(g texture, InterfaceC3597b genQueueListener) {
        this.f31978e = 80.0f;
        this.f31976c = texture;
        this.f31977d = genQueueListener;
    }

    public C3596a(float bias, g texture, InterfaceC3597b genQueueListener) {
        this.f31978e = bias;
        this.f31976c = texture;
        this.f31977d = genQueueListener;
    }

    public C3596a(float bias, g texture, String outputName, InterfaceC3597b genQueueListener) {
        this.f31978e = bias;
        this.f31976c = texture;
        this.f31977d = genQueueListener;
        this.f31979g = outputName;
    }
}
