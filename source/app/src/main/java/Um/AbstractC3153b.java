package Um;

public abstract class AbstractC3153b extends v {
    @Override
    public void m(v vVar) {
        if (!(vVar instanceof AbstractC3153b)) {
            throw new IllegalArgumentException("Parent of block must also be block (can not be inline)");
        }
        super.m(vVar);
    }

    @Override
    public AbstractC3153b h() {
        return (AbstractC3153b) super.h();
    }
}
