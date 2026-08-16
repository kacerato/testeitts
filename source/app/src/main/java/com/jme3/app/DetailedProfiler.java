package com.jme3.app;

import com.jme3.profile.AppProfiler;
import com.jme3.profile.AppStep;
import com.jme3.profile.SpStep;
import com.jme3.profile.VpStep;
import com.jme3.renderer.Renderer;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class DetailedProfiler implements AppProfiler {
    private static final int MAX_FRAMES = 100;
    private static int currentFrame;
    private Map<String, StatLine> data;
    StatLine frameTime;
    private Map<String, StatLine> pool;
    private Renderer renderer;
    private long startFrame;
    private String prevPath = null;
    private boolean frameEnded = false;
    private boolean ongoingGpuProfiling = false;
    private String curAppPath = null;
    private String curVpPath = null;
    private String curSpPath = null;
    private VpStep lastVpStep = null;
    private final StringBuilder path = new StringBuilder(256);
    private final StringBuilder vpPath = new StringBuilder(256);
    private final Deque<Integer> idsPool = new ArrayDeque(100);

    public static class StatLine {
        private int cpuCursor;
        private long cpuSum;
        private final long[] cpuTimes;
        private int gpuCursor;
        private long gpuSum;
        private final long[] gpuTimes;
        private long lastValue;
        private int nbFramesCpu;
        private int nbFramesGpu;
        private int startCursor;
        List<Integer> taskIds;

        public void closeFrame() {
            if (!isActive()) {
                this.nbFramesCpu = 0;
                return;
            }
            long j10 = this.cpuSum;
            long[] jArr = this.cpuTimes;
            int i10 = this.cpuCursor;
            long j11 = j10 - jArr[i10];
            this.cpuSum = j11;
            long j12 = this.lastValue;
            jArr[i10] = j12;
            this.cpuSum = j11 + j12;
            this.nbFramesCpu++;
        }

        public long getValueCpu() {
            return this.lastValue;
        }

        public void setNewFrameValueCpu(long j10) {
            int i10 = DetailedProfiler.currentFrame % 100;
            if (this.nbFramesCpu == 0) {
                this.startCursor = i10;
            }
            this.cpuCursor = i10;
            this.lastValue = j10;
        }

        public void setValueCpu(long j10) {
            this.lastValue = j10;
        }

        public double getAverageCpu() {
            if (this.nbFramesCpu == 0) {
                return 0.0d;
            }
            return this.cpuSum / Math.min(r0, 100);
        }

        public double getAverageGpu() {
            if (this.nbFramesGpu == 0) {
                return 0.0d;
            }
            return this.gpuSum / Math.min(r0, 100);
        }

        public boolean isActive() {
            return this.cpuCursor >= (DetailedProfiler.currentFrame % 100) - 1;
        }

        public void setValueGpu(long j10) {
            long j11 = this.gpuSum;
            long[] jArr = this.gpuTimes;
            int i10 = this.gpuCursor;
            long j12 = j11 - jArr[i10];
            this.gpuSum = j12;
            jArr[i10] = j10;
            this.gpuSum = j12 + j10;
            this.nbFramesGpu++;
            this.gpuCursor = (i10 + 1) % 100;
        }

        private StatLine(int i10) {
            this.cpuTimes = new long[100];
            this.gpuTimes = new long[100];
            this.startCursor = 0;
            this.cpuCursor = 0;
            this.gpuCursor = 0;
            this.cpuSum = 0L;
            this.gpuSum = 0L;
            this.lastValue = 0L;
            this.taskIds = new ArrayList();
            int i11 = i10 % 100;
            this.startCursor = i11;
            this.cpuCursor = i11;
            this.gpuCursor = i11;
        }
    }

    private void addStep(String str, long j10) {
        StatLine statLine;
        Renderer renderer;
        if (this.ongoingGpuProfiling && (renderer = this.renderer) != null) {
            renderer.stopProfiling();
            this.ongoingGpuProfiling = false;
        }
        String str2 = this.prevPath;
        if (str2 != null && (statLine = this.data.get(str2)) != null) {
            statLine.setValueCpu(j10 - statLine.getValueCpu());
        }
        StatLine statLine2 = this.pool.get(str);
        if (statLine2 == null) {
            statLine2 = new StatLine(currentFrame);
            this.pool.put(str, statLine2);
        }
        this.data.put(str, statLine2);
        statLine2.setNewFrameValueCpu(j10);
        if (this.renderer != null) {
            int unusedTaskId = getUnusedTaskId();
            statLine2.taskIds.add(Integer.valueOf(unusedTaskId));
            this.renderer.startProfiling(unusedTaskId);
        }
        this.ongoingGpuProfiling = true;
        this.prevPath = str;
    }

    private void closeFrame() {
        Renderer renderer;
        if (this.data != null) {
            if (this.ongoingGpuProfiling && (renderer = this.renderer) != null) {
                renderer.stopProfiling();
                this.ongoingGpuProfiling = false;
            }
            this.prevPath = null;
            Iterator<StatLine> it = this.data.values().iterator();
            while (it.hasNext()) {
                it.next().closeFrame();
            }
            currentFrame++;
        }
    }

    private String getPath(String str, String... strArr) {
        StringBuilder sb2 = new StringBuilder(str);
        if (strArr != null) {
            for (String str2 : strArr) {
                sb2.append("/");
                sb2.append(str2);
            }
        }
        return sb2.toString();
    }

    private int getUnusedTaskId() {
        if (this.idsPool.isEmpty()) {
            poolTaskIds(this.renderer);
        }
        return this.idsPool.pop().intValue();
    }

    private void poolTaskIds(Renderer renderer) {
        for (int i10 : renderer.generateProfilingTasks(100)) {
            this.idsPool.push(Integer.valueOf(i10));
        }
    }

    @Override
    public void appStep(AppStep appStep) {
        this.curAppPath = appStep.name();
        if (appStep == AppStep.BeginFrame) {
            if (this.data == null) {
                this.data = new LinkedHashMap();
                this.pool = new HashMap();
                this.frameTime = new StatLine(currentFrame);
            }
            if (this.frameTime.isActive()) {
                this.frameTime.setValueCpu(System.nanoTime() - this.frameTime.getValueCpu());
                this.frameTime.closeFrame();
            }
            this.frameTime.setNewFrameValueCpu(System.nanoTime());
            this.frameEnded = false;
            for (StatLine statLine : this.data.values()) {
                Iterator<Integer> it = statLine.taskIds.iterator();
                while (it.hasNext()) {
                    Integer next = it.next();
                    int intValue = next.intValue();
                    if (this.renderer.isTaskResultAvailable(intValue)) {
                        statLine.setValueGpu(this.renderer.getProfilingTime(intValue));
                        it.remove();
                        this.idsPool.push(next);
                    }
                }
            }
            this.data.clear();
        }
        if (this.data != null) {
            String path = getPath(appStep.name(), new String[0]);
            if (appStep != AppStep.EndFrame) {
                addStep(path, System.nanoTime());
            } else {
                if (this.frameEnded) {
                    return;
                }
                addStep(path, System.nanoTime());
                this.data.get(path).setValueCpu(System.nanoTime() - this.startFrame);
                this.frameEnded = true;
            }
        }
        if (appStep == AppStep.EndFrame) {
            closeFrame();
        }
    }

    @Override
    public void appSubStep(String... strArr) {
        if (this.data != null) {
            String path = getPath("", strArr);
            this.path.setLength(0);
            StringBuilder sb2 = this.path;
            sb2.append(this.curAppPath);
            sb2.append(path);
            addStep(this.path.toString(), System.nanoTime());
        }
    }

    public double getAverageFrameTime() {
        return this.frameTime.getAverageCpu();
    }

    public Map<String, StatLine> getStats() {
        Map<String, StatLine> map = this.data;
        if (map != null) {
            return map;
        }
        return null;
    }

    public void setRenderer(Renderer renderer) {
        this.renderer = renderer;
        poolTaskIds(renderer);
    }

    @Override
    public void spStep(SpStep spStep, String... strArr) {
        if (this.data != null) {
            this.curSpPath = getPath("", strArr);
            this.path.setLength(0);
            StringBuilder sb2 = this.path;
            sb2.append(this.curAppPath);
            sb2.append("/");
            sb2.append(this.curVpPath);
            sb2.append(this.curSpPath);
            addStep(this.path.toString(), System.nanoTime());
        }
    }

    @Override
    public void vpStep(VpStep vpStep, ViewPort viewPort, RenderQueue.Bucket bucket) {
        String str;
        if (this.data != null) {
            this.vpPath.setLength(0);
            StringBuilder sb2 = this.vpPath;
            sb2.append(viewPort.getName());
            sb2.append("/");
            if (bucket == null) {
                str = vpStep.name();
            } else {
                str = bucket.name() + " Bucket";
            }
            sb2.append(str);
            this.path.setLength(0);
            VpStep vpStep2 = this.lastVpStep;
            if ((vpStep2 == VpStep.PostQueue || vpStep2 == VpStep.PostFrame) && bucket != null) {
                StringBuilder sb3 = this.path;
                sb3.append(this.curAppPath);
                sb3.append("/");
                sb3.append(this.curVpPath);
                sb3.append(this.curSpPath);
                sb3.append("/");
                sb3.append((CharSequence) this.vpPath);
                this.curVpPath = this.vpPath.toString();
            } else if (bucket != null) {
                StringBuilder sb4 = this.path;
                sb4.append(this.curAppPath);
                sb4.append("/");
                sb4.append(this.curVpPath);
                sb4.append("/");
                sb4.append(bucket.name() + " Bucket");
            } else {
                StringBuilder sb5 = this.path;
                sb5.append(this.curAppPath);
                sb5.append("/");
                sb5.append((CharSequence) this.vpPath);
                this.curVpPath = this.vpPath.toString();
            }
            this.lastVpStep = vpStep;
            addStep(this.path.toString(), System.nanoTime());
        }
    }
}
