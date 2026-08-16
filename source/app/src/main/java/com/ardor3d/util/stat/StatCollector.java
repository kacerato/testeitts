package com.ardor3d.util.stat;

import com.ardor3d.util.Timer;
import com.google.common.collect.M1;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Stack;
import java.util.logging.Logger;

public abstract class StatCollector {
    protected static final double TO_MS;
    protected static long pausedStartTime;
    protected static long pausedTime;
    private static final Logger logger = Logger.getLogger(StatCollector.class.getName());
    protected static int maxSamples = 100;
    protected static HashMap<StatType, StatValue> current = new HashMap<>();
    protected static List<MultiStatSample> historical = Collections.synchronizedList(new LinkedList());
    protected static double sampleRateMS = 1000.0d;
    protected static double lastSampleTime = 0.0d;
    protected static double lastTimeCheckMS = 0.0d;
    protected static List<StatListener> listeners = M1.q();
    protected static double startOffset = 0.0d;
    protected static boolean ignoreStats = false;
    protected static Stack<StatType> timeStatStack = new Stack<>();
    protected static HashSet<StatType> timedStats = new HashSet<>();
    protected static Timer timer = new Timer();

    static {
        TO_MS = 1000.0d / r2.getResolution();
    }

    public static void addStat(StatType statType, double d10) {
        if (ignoreStats) {
            return;
        }
        synchronized (current) {
            try {
                StatValue statValue = current.get(statType);
                if (statValue == null) {
                    statValue = new StatValue();
                    current.put(statType, statValue);
                }
                statValue.incrementValue(d10);
                statValue.incrementIterations();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void addStatListener(StatListener statListener) {
        listeners.add(statListener);
    }

    public static void addTimedStat(StatType statType) {
        timedStats.add(statType);
    }

    public static void endStat(StatType statType) {
        if (ignoreStats || !timedStats.contains(statType)) {
            return;
        }
        synchronized (current) {
            try {
                StatType pop = timeStatStack.pop();
                double time = timer.getTime() * TO_MS;
                current.get(pop).incrementValue(time - lastTimeCheckMS);
                lastTimeCheckMS = time;
                while (!pop.equals(statType)) {
                    logger.warning("Mismatched endStat, found " + ((Object) pop) + ".  Expected '" + ((Object) statType) + "'");
                    pop = timeStatStack.pop();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void fireActionEvent() {
        Iterator<StatListener> it = listeners.iterator();
        while (it.hasNext()) {
            it.next().statsUpdated();
        }
    }

    public static List<MultiStatSample> getHistorical() {
        return historical;
    }

    public static int getMaxSamples() {
        return maxSamples;
    }

    public static double getSampleRate() {
        return sampleRateMS;
    }

    public static double getStartOffset() {
        return startOffset;
    }

    public static boolean hasHistoricalStat(StatType statType) {
        Iterator<MultiStatSample> it = historical.iterator();
        while (it.hasNext()) {
            if (it.next().containsStat(statType)) {
                return true;
            }
        }
        return false;
    }

    public static void init(long j10, int i10) {
        sampleRateMS = j10;
        maxSamples = i10;
    }

    public static boolean isIgnoreStats() {
        return ignoreStats;
    }

    public static MultiStatSample lastStats() {
        if (historical.size() == 0) {
            return null;
        }
        return historical.get(r0.size() - 1);
    }

    public static void pause() {
        setIgnoreStats(true);
        pausedStartTime = timer.getTime();
    }

    public static void removeAllListeners() {
        listeners.clear();
    }

    public static void removeAllTimedStats() {
        timedStats.clear();
    }

    public static boolean removeStatListener(StatListener statListener) {
        return listeners.remove(statListener);
    }

    public static boolean removeTimedStat(StatType statType) {
        return timedStats.remove(statType);
    }

    public static void resetTimedStack() {
        timeStatStack.clear();
    }

    public static void resume() {
        setIgnoreStats(false);
        pausedTime += timer.getTime() - pausedStartTime;
    }

    public static void setIgnoreStats(boolean z10) {
        ignoreStats = z10;
    }

    public static void setMaxSamples(int i10) {
        maxSamples = i10;
    }

    public static void setSampleRate(long j10) {
        sampleRateMS = j10;
    }

    public static void startStat(StatType statType) {
        if (ignoreStats || !timedStats.contains(statType)) {
            return;
        }
        synchronized (current) {
            try {
                StatType peek = !timeStatStack.isEmpty() ? timeStatStack.peek() : null;
                double time = timer.getTime() * TO_MS;
                if (peek != null) {
                    current.get(peek).incrementValue(time - lastTimeCheckMS);
                } else {
                    HashMap<StatType, StatValue> hashMap = current;
                    StatType statType2 = StatType.STAT_UNSPECIFIED_TIMER;
                    StatValue statValue = hashMap.get(statType2);
                    if (statValue == null) {
                        statValue = new StatValue();
                        statValue.setIterations(1L);
                        current.put(statType2, statValue);
                    }
                    statValue.incrementValue(time - lastTimeCheckMS);
                }
                lastTimeCheckMS = time;
                timeStatStack.push(statType);
                if (statType != null) {
                    StatValue statValue2 = current.get(statType);
                    if (statValue2 == null) {
                        statValue2 = new StatValue();
                        current.put(statType, statValue2);
                    }
                    statValue2.incrementIterations();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static synchronized void update() {
        synchronized (StatCollector.class) {
            try {
                double time = timer.getTime();
                double d10 = TO_MS;
                double d11 = time * d10;
                double d12 = d11 - lastSampleTime;
                if (d12 < sampleRateMS) {
                    return;
                }
                synchronized (current) {
                    try {
                        if (timeStatStack.isEmpty()) {
                            StatValue statValue = current.get(StatType.STAT_UNSPECIFIED_TIMER);
                            if (statValue != null) {
                                statValue.incrementValue((d11 - lastTimeCheckMS) - (pausedTime * d10));
                                lastTimeCheckMS = d11;
                                statValue.setIterations(1L);
                            }
                        } else {
                            StatValue statValue2 = current.get(timeStatStack.peek());
                            statValue2.incrementValue((d11 - lastTimeCheckMS) - (pausedTime * d10));
                            lastTimeCheckMS = d11;
                            int size = timeStatStack.size();
                            while (true) {
                                size--;
                                if (size < 0) {
                                    break;
                                }
                                StatValue statValue3 = current.get(timeStatStack.get(size));
                                if (statValue3 != null) {
                                    statValue3.setIterations(0L);
                                }
                            }
                            statValue2.setIterations(1L);
                        }
                        MultiStatSample createNew = MultiStatSample.createNew(current);
                        createNew.setTimeElapsed(d12);
                        historical.add(createNew);
                        Iterator<StatValue> it = current.values().iterator();
                        while (it.hasNext()) {
                            it.next().reset();
                        }
                    } finally {
                    }
                }
                startOffset = 0.0d;
                pausedTime = 0L;
                while (historical.size() > maxSamples) {
                    MultiStatSample remove = historical.remove(0);
                    if (remove != null) {
                        startOffset += remove.getElapsedTime();
                    }
                }
                lastSampleTime = d11;
                fireActionEvent();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
