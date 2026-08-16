package com.ardor3d.renderer.queue;

import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.renderer.Camera;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.util.SortUtil;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Stack;

public class AbstractRenderBucket implements RenderBucket {
    protected Comparator<Spatial> _comparator;
    protected int _currentListSize;
    protected Spatial[] _tempList;
    protected Stack<Spatial[]> _listStack = new Stack<>();
    protected Stack<Spatial[]> _listStackPool = new Stack<>();
    protected Stack<Integer> _listSizeStack = new Stack<>();
    protected Spatial[] _currentList = new Spatial[32];

    @Override
    public void add(Spatial spatial) {
        int i10 = this._currentListSize;
        Spatial[] spatialArr = this._currentList;
        if (i10 == spatialArr.length) {
            Spatial[] spatialArr2 = new Spatial[i10 * 2];
            System.arraycopy(spatialArr, 0, spatialArr2, 0, i10);
            this._currentList = spatialArr2;
        }
        Spatial[] spatialArr3 = this._currentList;
        int i11 = this._currentListSize;
        this._currentListSize = i11 + 1;
        spatialArr3[i11] = spatial;
    }

    @Override
    public void clear() {
        int i10 = this._currentListSize;
        if (i10 > 0) {
            Arrays.fill(this._currentList, 0, i10 - 1, (Object) null);
            this._currentListSize = 0;
        }
    }

    public double distanceToCam(Spatial spatial) {
        ReadOnlyVector3 worldTranslation;
        Camera currentCamera = Camera.getCurrentCamera();
        if (spatial.getWorldBound() == null || !Vector3.isValid(spatial.getWorldBound().getCenter())) {
            worldTranslation = spatial.getWorldTranslation();
            if (!Vector3.isValid(worldTranslation)) {
                return Double.NEGATIVE_INFINITY;
            }
        } else {
            worldTranslation = spatial.getWorldBound().getCenter();
        }
        return currentCamera.distanceToCam(worldTranslation);
    }

    @Override
    public void popBucket() {
        Spatial[] spatialArr = this._currentList;
        if (spatialArr != null) {
            this._listStackPool.push(spatialArr);
        }
        this._currentList = this._listStack.pop();
        this._currentListSize = this._listSizeStack.pop().intValue();
    }

    @Override
    public void pushBucket() {
        this._listStack.push(this._currentList);
        if (this._listStackPool.isEmpty()) {
            this._currentList = new Spatial[32];
        } else {
            this._currentList = this._listStackPool.pop();
        }
        this._listSizeStack.push(Integer.valueOf(this._currentListSize));
        this._currentListSize = 0;
    }

    @Override
    public void remove(Spatial spatial) {
        int i10 = 0;
        for (int i11 = 0; i11 < this._currentListSize && this._currentList[i10] != spatial; i11++) {
            i10++;
        }
        while (true) {
            int i12 = this._currentListSize;
            if (i10 >= i12 - 1) {
                this._currentListSize = i12 - 1;
                return;
            }
            Spatial[] spatialArr = this._currentList;
            int i13 = i10 + 1;
            spatialArr[i10] = spatialArr[i13];
            i10 = i13;
        }
    }

    @Override
    public void render(Renderer renderer) {
        for (int i10 = 0; i10 < this._currentListSize; i10++) {
            this._currentList[i10].draw(renderer);
        }
    }

    @Override
    public void sort() {
        int i10 = this._currentListSize;
        if (i10 > 1) {
            if (i10 <= SortUtil.SHELL_SORT_THRESHOLD) {
                SortUtil.shellSort(this._currentList, 0, i10 - 1, this._comparator);
                return;
            }
            Spatial[] spatialArr = this._tempList;
            if (spatialArr == null || spatialArr.length < i10) {
                this._tempList = (Spatial[]) this._currentList.clone();
            } else {
                System.arraycopy(this._currentList, 0, spatialArr, 0, i10);
            }
            SortUtil.msort(this._tempList, this._currentList, 0, this._currentListSize - 1, this._comparator);
            Arrays.fill(this._tempList, 0, this._currentListSize - 1, (Object) null);
        }
    }
}
