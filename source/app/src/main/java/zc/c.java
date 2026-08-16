package zc;

import qd.InterfaceC15066i;

public class c implements InterfaceC15066i<C16299a> {
    @Override
    public void b(C16299a event, long sequence, boolean endOfBatch) {
        System.out.println("Event: " + ((Object) event));
    }
}
