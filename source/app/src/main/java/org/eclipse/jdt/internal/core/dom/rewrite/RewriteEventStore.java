package org.eclipse.jdt.internal.core.dom.rewrite;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.core.dom.rewrite.TargetSourceRangeComputer;
import org.eclipse.text.edits.TextEditGroup;

public final class RewriteEventStore {
    public static final int BOTH = 3;
    public static boolean DEBUG = false;
    private static final String INTERNAL_PLACEHOLDER_PROPERTY = "rewrite_internal_placeholder";
    public static final int NEW = 1;
    public static final int ORIGINAL = 2;
    final Map eventLookup = new HashMap();
    private EventHolder lastEvent = null;
    private Map editGroups = null;
    Map trackedNodes = null;
    private Set insertBoundToPrevious = null;
    private INodePropertyMapper nodePropertyMapper = null;
    List nodeCopySources = null;
    Map nodeRangeInfos = null;

    public static class CopySourceInfo implements Comparable {
        public final boolean isMove;
        public final PropertyLocation location;
        private final ASTNode node;

        public CopySourceInfo(PropertyLocation propertyLocation, ASTNode aSTNode, boolean z10) {
            this.location = propertyLocation;
            this.node = aSTNode;
            this.isMove = z10;
        }

        @Override
        public int compareTo(Object obj) {
            CopySourceInfo copySourceInfo = (CopySourceInfo) obj;
            int startPosition = getNode().getStartPosition() - copySourceInfo.getNode().getStartPosition();
            if (startPosition != 0) {
                return startPosition;
            }
            boolean z10 = copySourceInfo.isMove;
            boolean z11 = this.isMove;
            if (z10 != z11) {
                return z11 ? -1 : 1;
            }
            return 0;
        }

        public ASTNode getNode() {
            return this.node;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            if (this.isMove) {
                stringBuffer.append("move source: ");
            } else {
                stringBuffer.append("copy source: ");
            }
            stringBuffer.append((Object) this.node);
            return stringBuffer.toString();
        }
    }

    public static class EventHolder {
        public final StructuralPropertyDescriptor childProperty;
        public final RewriteEvent event;
        public final ASTNode parent;

        public EventHolder(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, RewriteEvent rewriteEvent) {
            this.parent = aSTNode;
            this.childProperty = structuralPropertyDescriptor;
            this.event = rewriteEvent;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append((Object) this.parent);
            stringBuffer.append(" - ");
            stringBuffer.append(this.childProperty.getId());
            stringBuffer.append(": ");
            stringBuffer.append((Object) this.event);
            stringBuffer.append('\n');
            return stringBuffer.toString();
        }
    }

    public interface INodePropertyMapper {
        Object getOriginalValue(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor);
    }

    public static class NodeRangeInfo implements Comparable {
        public final CopySourceInfo copyInfo;
        public final TextEditGroup editGroup;
        private final ASTNode first;
        private final ASTNode last;
        public final ASTNode replacingNode;

        public NodeRangeInfo(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, ASTNode aSTNode2, ASTNode aSTNode3, CopySourceInfo copySourceInfo, ASTNode aSTNode4, TextEditGroup textEditGroup) {
            this.first = aSTNode2;
            this.last = aSTNode3;
            this.copyInfo = copySourceInfo;
            this.replacingNode = aSTNode4;
            this.editGroup = textEditGroup;
        }

        @Override
        public int compareTo(Object obj) {
            NodeRangeInfo nodeRangeInfo = (NodeRangeInfo) obj;
            int startPosition = getStartNode().getStartPosition() - nodeRangeInfo.getStartNode().getStartPosition();
            if (startPosition != 0) {
                return startPosition;
            }
            int startPosition2 = getEndNode().getStartPosition() - nodeRangeInfo.getEndNode().getStartPosition();
            if (startPosition2 != 0) {
                return -startPosition2;
            }
            if (nodeRangeInfo.isMove() != isMove()) {
                return isMove() ? -1 : 1;
            }
            return 0;
        }

        public ASTNode getEndNode() {
            return this.last;
        }

        public Block getInternalPlaceholder() {
            return (Block) this.copyInfo.getNode();
        }

        public ASTNode getStartNode() {
            return this.first;
        }

        public boolean isMove() {
            return this.copyInfo.isMove;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            if (this.first != this.last) {
                stringBuffer.append("range ");
            }
            if (isMove()) {
                stringBuffer.append("move source: ");
            } else {
                stringBuffer.append("copy source: ");
            }
            stringBuffer.append((Object) this.first);
            stringBuffer.append(" - ");
            stringBuffer.append((Object) this.last);
            return stringBuffer.toString();
        }

        public void updatePlaceholderSourceRanges(TargetSourceRangeComputer targetSourceRangeComputer) {
            TargetSourceRangeComputer.SourceRange computeSourceRange = targetSourceRangeComputer.computeSourceRange(getStartNode());
            TargetSourceRangeComputer.SourceRange computeSourceRange2 = targetSourceRangeComputer.computeSourceRange(getEndNode());
            int startPosition = computeSourceRange.getStartPosition();
            getInternalPlaceholder().setSourceRange(startPosition, (computeSourceRange2.getStartPosition() + computeSourceRange2.getLength()) - startPosition);
        }
    }

    public class ParentIterator implements Iterator {
        private Iterator eventIter;
        private Iterator rangeNodeIter;
        private Iterator sourceNodeIter;
        private Iterator trackedNodeIter;

        public ParentIterator() {
            this.eventIter = RewriteEventStore.this.eventLookup.o().iterator();
            List list = RewriteEventStore.this.nodeCopySources;
            if (list != null) {
                this.sourceNodeIter = list.iterator();
            } else {
                this.sourceNodeIter = Collections.EMPTY_LIST.iterator();
            }
            Map map = RewriteEventStore.this.nodeRangeInfos;
            if (map != null) {
                this.rangeNodeIter = map.o().iterator();
            } else {
                this.rangeNodeIter = Collections.EMPTY_LIST.iterator();
            }
            Map map2 = RewriteEventStore.this.trackedNodes;
            if (map2 != null) {
                this.trackedNodeIter = map2.o().iterator();
            } else {
                this.trackedNodeIter = Collections.EMPTY_LIST.iterator();
            }
        }

        @Override
        public boolean hasNext() {
            return this.eventIter.hasNext() || this.sourceNodeIter.hasNext() || this.rangeNodeIter.hasNext() || this.trackedNodeIter.hasNext();
        }

        @Override
        public Object next() {
            return this.eventIter.hasNext() ? this.eventIter.next() : this.sourceNodeIter.hasNext() ? ((CopySourceInfo) this.sourceNodeIter.next()).getNode() : this.rangeNodeIter.hasNext() ? ((PropertyLocation) this.rangeNodeIter.next()).getParent() : this.trackedNodeIter.next();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public static final class PropertyLocation {
        private final ASTNode parent;
        private final StructuralPropertyDescriptor property;

        public PropertyLocation(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
            this.parent = aSTNode;
            this.property = structuralPropertyDescriptor;
        }

        public boolean equals(Object obj) {
            if (obj != null && obj.getClass().equals(PropertyLocation.class)) {
                PropertyLocation propertyLocation = (PropertyLocation) obj;
                if (propertyLocation.getParent().equals(getParent()) && propertyLocation.getProperty().equals(getProperty())) {
                    return true;
                }
            }
            return false;
        }

        public ASTNode getParent() {
            return this.parent;
        }

        public StructuralPropertyDescriptor getProperty() {
            return this.property;
        }

        public int hashCode() {
            return getParent().hashCode() + getProperty().hashCode();
        }
    }

    private Object accessOriginalValue(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        INodePropertyMapper iNodePropertyMapper = this.nodePropertyMapper;
        return iNodePropertyMapper != null ? iNodePropertyMapper.getOriginalValue(aSTNode, structuralPropertyDescriptor) : aSTNode.getStructuralProperty(structuralPropertyDescriptor);
    }

    private void assertNoOverlap(ListRewriteEvent listRewriteEvent, int i10, int i11, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            NodeRangeInfo nodeRangeInfo = (NodeRangeInfo) it.next();
            int index = listRewriteEvent.getIndex(nodeRangeInfo.getStartNode(), 3);
            int index2 = listRewriteEvent.getIndex(nodeRangeInfo.getEndNode(), 3);
            if ((index < i10 && index2 < i11 && index2 >= i10) || (index > i10 && index <= index2 && index2 > i11)) {
                throw new IllegalArgumentException("Range overlapps with an existing copy or move range");
            }
        }
    }

    private final CopySourceInfo createCopySourceInfo(PropertyLocation propertyLocation, ASTNode aSTNode, boolean z10) {
        CopySourceInfo copySourceInfo = new CopySourceInfo(propertyLocation, aSTNode, z10);
        if (this.nodeCopySources == null) {
            this.nodeCopySources = new ArrayList();
        }
        this.nodeCopySources.add(copySourceInfo);
        return copySourceInfo;
    }

    private void doMarkMovedAsRemoved(CopySourceInfo copySourceInfo, ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        if (!structuralPropertyDescriptor.isChildListProperty()) {
            NodeRewriteEvent nodeEvent = getNodeEvent(aSTNode, structuralPropertyDescriptor, true);
            if (nodeEvent.getChangeKind() == 0) {
                nodeEvent.setNewValue(null);
                return;
            }
            return;
        }
        ListRewriteEvent listEvent = getListEvent(aSTNode, structuralPropertyDescriptor, true);
        int index = listEvent.getIndex(copySourceInfo.getNode(), 2);
        if (index == -1 || listEvent.getChangeKind(index) != 0) {
            return;
        }
        listEvent.setNewValue(null, index);
    }

    public static boolean isNewNode(ASTNode aSTNode) {
        return (aSTNode.getFlags() & 2) == 0;
    }

    private boolean isNodeInEvent(RewriteEvent rewriteEvent, Object obj, int i10) {
        if ((i10 & 1) == 0 || rewriteEvent.getNewValue() != obj) {
            return (i10 & 2) != 0 && rewriteEvent.getOriginalValue() == obj;
        }
        return true;
    }

    private void prepareNodeRangeCopies(TargetSourceRangeComputer targetSourceRangeComputer) {
        for (Map.Entry entry : this.nodeRangeInfos.entrySet()) {
            List list = (List) entry.getValue();
            Collections.sort(list);
            PropertyLocation propertyLocation = (PropertyLocation) entry.getKey();
            addEvent(propertyLocation.getParent(), propertyLocation.getProperty(), new ListRewriteEvent(processListWithRanges(list, getListEvent(propertyLocation.getParent(), propertyLocation.getProperty(), true).getChildren(), targetSourceRangeComputer)));
        }
    }

    private void prepareSingleNodeCopies() {
        PropertyLocation propertyLocation;
        for (int i10 = 0; i10 < this.nodeCopySources.size(); i10++) {
            CopySourceInfo copySourceInfo = (CopySourceInfo) this.nodeCopySources.get(i10);
            if (copySourceInfo.isMove && (propertyLocation = copySourceInfo.location) != null) {
                doMarkMovedAsRemoved(copySourceInfo, propertyLocation.getParent(), copySourceInfo.location.getProperty());
            }
        }
    }

    private RewriteEvent[] processListWithRanges(List list, RewriteEvent[] rewriteEventArr, TargetSourceRangeComputer targetSourceRangeComputer) {
        List arrayList = new ArrayList(rewriteEventArr.length);
        Stack stack = new Stack();
        Stack stack2 = new Stack();
        Iterator it = list.iterator();
        NodeRangeInfo nodeRangeInfo = (NodeRangeInfo) it.next();
        NodeRangeInfo nodeRangeInfo2 = null;
        for (RewriteEvent rewriteEvent : rewriteEventArr) {
            ASTNode aSTNode = (ASTNode) rewriteEvent.getOriginalValue();
            while (nodeRangeInfo != null && aSTNode == nodeRangeInfo.getStartNode()) {
                nodeRangeInfo.updatePlaceholderSourceRanges(targetSourceRangeComputer);
                Block internalPlaceholder = nodeRangeInfo.getInternalPlaceholder();
                NodeRewriteEvent nodeRewriteEvent = nodeRangeInfo.isMove() ? new NodeRewriteEvent(internalPlaceholder, nodeRangeInfo.replacingNode) : new NodeRewriteEvent(internalPlaceholder, internalPlaceholder);
                arrayList.add(nodeRewriteEvent);
                TextEditGroup textEditGroup = nodeRangeInfo.editGroup;
                if (textEditGroup != null) {
                    setEventEditGroup(nodeRewriteEvent, textEditGroup);
                }
                stack.push(arrayList);
                stack2.push(nodeRangeInfo2);
                arrayList = new ArrayList(rewriteEventArr.length);
                nodeRangeInfo2 = nodeRangeInfo;
                nodeRangeInfo = it.hasNext() ? (NodeRangeInfo) it.next() : null;
            }
            arrayList.add(rewriteEvent);
            while (nodeRangeInfo2 != null && aSTNode == nodeRangeInfo2.getEndNode()) {
                addEvent(nodeRangeInfo2.getInternalPlaceholder(), Block.STATEMENTS_PROPERTY, new ListRewriteEvent((RewriteEvent[]) arrayList.toArray(new RewriteEvent[arrayList.size()])));
                arrayList = (List) stack.pop();
                nodeRangeInfo2 = (NodeRangeInfo) stack2.pop();
            }
        }
        return (RewriteEvent[]) arrayList.toArray(new RewriteEvent[arrayList.size()]);
    }

    private void removeMoveRangePlaceholders() {
        for (Map.Entry entry : this.nodeRangeInfos.entrySet()) {
            HashSet hashSet = new HashSet();
            List list = (List) entry.getValue();
            for (int i10 = 0; i10 < list.size(); i10++) {
                hashSet.add(((NodeRangeInfo) list.get(i10)).getInternalPlaceholder());
            }
            PropertyLocation propertyLocation = (PropertyLocation) entry.getKey();
            RewriteEvent[] children = getListEvent(propertyLocation.getParent(), propertyLocation.getProperty(), true).getChildren();
            ArrayList arrayList = new ArrayList();
            revertListWithRanges(children, hashSet, arrayList);
            addEvent(propertyLocation.getParent(), propertyLocation.getProperty(), new ListRewriteEvent((RewriteEvent[]) arrayList.toArray(new RewriteEvent[arrayList.size()])));
        }
    }

    private void revertListWithRanges(RewriteEvent[] rewriteEventArr, Set set, List list) {
        for (RewriteEvent rewriteEvent : rewriteEventArr) {
            ASTNode aSTNode = (ASTNode) rewriteEvent.getOriginalValue();
            if (set.contains(aSTNode)) {
                revertListWithRanges(getListEvent(aSTNode, Block.STATEMENTS_PROPERTY, false).getChildren(), set, list);
            } else {
                list.add(rewriteEvent);
            }
        }
    }

    private void validateHasChildProperty(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        if (aSTNode.structuralPropertiesForType().contains(structuralPropertyDescriptor)) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(Signature.getSimpleName(aSTNode.getClass().getName())) + " has no property " + structuralPropertyDescriptor.getId());
    }

    private void validateIsListProperty(StructuralPropertyDescriptor structuralPropertyDescriptor) {
        if (structuralPropertyDescriptor.isChildListProperty()) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(structuralPropertyDescriptor.getId()) + " is not a list property");
    }

    private void validateIsNodeProperty(StructuralPropertyDescriptor structuralPropertyDescriptor) {
        if (structuralPropertyDescriptor.isChildListProperty()) {
            throw new IllegalArgumentException(String.valueOf(structuralPropertyDescriptor.getId()) + " is not a node property");
        }
    }

    public void addEvent(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, RewriteEvent rewriteEvent) {
        validateHasChildProperty(aSTNode, structuralPropertyDescriptor);
        if (rewriteEvent.isListRewrite()) {
            validateIsListProperty(structuralPropertyDescriptor);
        }
        EventHolder eventHolder = new EventHolder(aSTNode, structuralPropertyDescriptor, rewriteEvent);
        List list = (List) this.eventLookup.get(aSTNode);
        if (list != null) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                if (((EventHolder) list.get(i10)).childProperty == structuralPropertyDescriptor) {
                    list.set(i10, eventHolder);
                    this.lastEvent = null;
                    return;
                }
            }
        } else {
            list = new ArrayList(3);
            this.eventLookup.put(aSTNode, list);
        }
        list.add(eventHolder);
    }

    public void clear() {
        this.eventLookup.clear();
        this.lastEvent = null;
        this.trackedNodes = null;
        this.editGroups = null;
        this.insertBoundToPrevious = null;
        this.nodeCopySources = null;
    }

    public final CopySourceInfo createRangeCopy(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, ASTNode aSTNode2, ASTNode aSTNode3, boolean z10, ASTNode aSTNode4, ASTNode aSTNode5, TextEditGroup textEditGroup) {
        CopySourceInfo createCopySourceInfo = createCopySourceInfo(null, aSTNode4, z10);
        aSTNode4.setProperty(INTERNAL_PLACEHOLDER_PROPERTY, aSTNode4);
        NodeRangeInfo nodeRangeInfo = new NodeRangeInfo(aSTNode, structuralPropertyDescriptor, aSTNode2, aSTNode3, createCopySourceInfo, aSTNode5, textEditGroup);
        ListRewriteEvent listEvent = getListEvent(aSTNode, structuralPropertyDescriptor, true);
        int index = listEvent.getIndex(aSTNode2, 2);
        if (index == -1) {
            throw new IllegalArgumentException("Start node is not a original child of the given list");
        }
        int index2 = listEvent.getIndex(aSTNode3, 2);
        if (index2 == -1) {
            throw new IllegalArgumentException("End node is not a original child of the given list");
        }
        if (index > index2) {
            throw new IllegalArgumentException("Start node must be before end node");
        }
        if (this.nodeRangeInfos == null) {
            this.nodeRangeInfos = new HashMap();
        }
        PropertyLocation propertyLocation = new PropertyLocation(aSTNode, structuralPropertyDescriptor);
        List list = (List) this.nodeRangeInfos.get(propertyLocation);
        if (list == null) {
            list = new ArrayList(2);
            this.nodeRangeInfos.put(propertyLocation, list);
        } else {
            assertNoOverlap(listEvent, index, index2, list);
        }
        list.add(nodeRangeInfo);
        return createCopySourceInfo;
    }

    public RewriteEvent findEvent(Object obj, int i10) {
        for (List list : this.eventLookup.values()) {
            for (int i11 = 0; i11 < list.size(); i11++) {
                RewriteEvent rewriteEvent = ((EventHolder) list.get(i11)).event;
                if (isNodeInEvent(rewriteEvent, obj, i10)) {
                    return rewriteEvent;
                }
                if (rewriteEvent.isListRewrite()) {
                    RewriteEvent[] children = rewriteEvent.getChildren();
                    for (int i12 = 0; i12 < children.length; i12++) {
                        if (isNodeInEvent(children[i12], obj, i10)) {
                            return children[i12];
                        }
                    }
                }
            }
        }
        return null;
    }

    public int getChangeKind(ASTNode aSTNode) {
        RewriteEvent findEvent = findEvent(aSTNode, 2);
        if (findEvent != null) {
            return findEvent.getChangeKind();
        }
        return 0;
    }

    public Iterator getChangeRootIterator() {
        return new ParentIterator();
    }

    public List getChangedPropertieEvents(ASTNode aSTNode) {
        ArrayList arrayList = new ArrayList();
        List list = (List) this.eventLookup.get(aSTNode);
        if (list != null) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                EventHolder eventHolder = (EventHolder) list.get(i10);
                if (eventHolder.event.getChangeKind() != 0) {
                    arrayList.add(eventHolder.event);
                }
            }
        }
        return arrayList;
    }

    public RewriteEvent getEvent(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        validateHasChildProperty(aSTNode, structuralPropertyDescriptor);
        EventHolder eventHolder = this.lastEvent;
        if (eventHolder != null && eventHolder.parent == aSTNode && eventHolder.childProperty == structuralPropertyDescriptor) {
            return eventHolder.event;
        }
        List list = (List) this.eventLookup.get(aSTNode);
        if (list == null) {
            return null;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            EventHolder eventHolder2 = (EventHolder) list.get(i10);
            if (eventHolder2.childProperty == structuralPropertyDescriptor) {
                this.lastEvent = eventHolder2;
                return eventHolder2.event;
            }
        }
        return null;
    }

    public TextEditGroup getEventEditGroup(RewriteEvent rewriteEvent) {
        Map map = this.editGroups;
        if (map == null) {
            return null;
        }
        return (TextEditGroup) map.get(rewriteEvent);
    }

    public ListRewriteEvent getListEvent(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, boolean z10) {
        validateIsListProperty(structuralPropertyDescriptor);
        ListRewriteEvent listRewriteEvent = (ListRewriteEvent) getEvent(aSTNode, structuralPropertyDescriptor);
        if (listRewriteEvent != null || !z10) {
            return listRewriteEvent;
        }
        ListRewriteEvent listRewriteEvent2 = new ListRewriteEvent((List) accessOriginalValue(aSTNode, structuralPropertyDescriptor));
        addEvent(aSTNode, structuralPropertyDescriptor, listRewriteEvent2);
        return listRewriteEvent2;
    }

    public Object getNewValue(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        RewriteEvent event = getEvent(aSTNode, structuralPropertyDescriptor);
        return event != null ? event.getNewValue() : accessOriginalValue(aSTNode, structuralPropertyDescriptor);
    }

    public CopySourceInfo[] getNodeCopySources(ASTNode aSTNode) {
        List list = this.nodeCopySources;
        if (list == null) {
            return null;
        }
        return internalGetCopySources(list, aSTNode);
    }

    public NodeRewriteEvent getNodeEvent(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, boolean z10) {
        validateIsNodeProperty(structuralPropertyDescriptor);
        NodeRewriteEvent nodeRewriteEvent = (NodeRewriteEvent) getEvent(aSTNode, structuralPropertyDescriptor);
        if (nodeRewriteEvent != null || !z10) {
            return nodeRewriteEvent;
        }
        Object accessOriginalValue = accessOriginalValue(aSTNode, structuralPropertyDescriptor);
        NodeRewriteEvent nodeRewriteEvent2 = new NodeRewriteEvent(accessOriginalValue, accessOriginalValue);
        addEvent(aSTNode, structuralPropertyDescriptor, nodeRewriteEvent2);
        return nodeRewriteEvent2;
    }

    public Object getOriginalValue(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor) {
        RewriteEvent event = getEvent(aSTNode, structuralPropertyDescriptor);
        return event != null ? event.getOriginalValue() : accessOriginalValue(aSTNode, structuralPropertyDescriptor);
    }

    public PropertyLocation getPropertyLocation(Object obj, int i10) {
        for (List list : this.eventLookup.values()) {
            for (int i11 = 0; i11 < list.size(); i11++) {
                EventHolder eventHolder = (EventHolder) list.get(i11);
                RewriteEvent rewriteEvent = eventHolder.event;
                if (isNodeInEvent(rewriteEvent, obj, i10)) {
                    return new PropertyLocation(eventHolder.parent, eventHolder.childProperty);
                }
                if (rewriteEvent.isListRewrite()) {
                    for (RewriteEvent rewriteEvent2 : rewriteEvent.getChildren()) {
                        if (isNodeInEvent(rewriteEvent2, obj, i10)) {
                            return new PropertyLocation(eventHolder.parent, eventHolder.childProperty);
                        }
                    }
                }
            }
        }
        if (!(obj instanceof ASTNode)) {
            return null;
        }
        ASTNode aSTNode = (ASTNode) obj;
        return new PropertyLocation(aSTNode.getParent(), aSTNode.getLocationInParent());
    }

    public final TextEditGroup getTrackedNodeData(ASTNode aSTNode) {
        Map map = this.trackedNodes;
        if (map != null) {
            return (TextEditGroup) map.get(aSTNode);
        }
        return null;
    }

    public boolean hasChangedProperties(ASTNode aSTNode) {
        List list = (List) this.eventLookup.get(aSTNode);
        if (list != null) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                if (((EventHolder) list.get(i10)).event.getChangeKind() != 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public CopySourceInfo[] internalGetCopySources(List list, ASTNode aSTNode) {
        ArrayList arrayList = new ArrayList(3);
        for (int i10 = 0; i10 < list.size(); i10++) {
            CopySourceInfo copySourceInfo = (CopySourceInfo) list.get(i10);
            if (copySourceInfo.getNode() == aSTNode) {
                arrayList.add(copySourceInfo);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        CopySourceInfo[] copySourceInfoArr = (CopySourceInfo[]) arrayList.toArray(new CopySourceInfo[arrayList.size()]);
        Arrays.sort(copySourceInfoArr);
        return copySourceInfoArr;
    }

    public boolean isInsertBoundToPrevious(ASTNode aSTNode) {
        Set set = this.insertBoundToPrevious;
        if (set != null) {
            return set.contains(aSTNode);
        }
        return false;
    }

    public final boolean isRangeCopyPlaceholder(ASTNode aSTNode) {
        return aSTNode.getProperty(INTERNAL_PLACEHOLDER_PROPERTY) != null;
    }

    public final CopySourceInfo markAsCopySource(ASTNode aSTNode, StructuralPropertyDescriptor structuralPropertyDescriptor, ASTNode aSTNode2, boolean z10) {
        return createCopySourceInfo(new PropertyLocation(aSTNode, structuralPropertyDescriptor), aSTNode2, z10);
    }

    public final void markAsTracked(ASTNode aSTNode, TextEditGroup textEditGroup) {
        if (getTrackedNodeData(aSTNode) != null) {
            throw new IllegalArgumentException("Node is already marked as tracked");
        }
        setTrackedNodeData(aSTNode, textEditGroup);
    }

    public void prepareMovedNodes(TargetSourceRangeComputer targetSourceRangeComputer) {
        if (this.nodeCopySources != null) {
            prepareSingleNodeCopies();
        }
        if (this.nodeRangeInfos != null) {
            prepareNodeRangeCopies(targetSourceRangeComputer);
        }
    }

    public void revertMovedNodes() {
        if (this.nodeRangeInfos != null) {
            removeMoveRangePlaceholders();
        }
    }

    public void setEventEditGroup(RewriteEvent rewriteEvent, TextEditGroup textEditGroup) {
        if (this.editGroups == null) {
            this.editGroups = new IdentityHashMap(5);
        }
        this.editGroups.put(rewriteEvent, textEditGroup);
    }

    public void setInsertBoundToPrevious(ASTNode aSTNode) {
        if (this.insertBoundToPrevious == null) {
            this.insertBoundToPrevious = new HashSet();
        }
        this.insertBoundToPrevious.add(aSTNode);
    }

    public void setNodePropertyMapper(INodePropertyMapper iNodePropertyMapper) {
        this.nodePropertyMapper = iNodePropertyMapper;
    }

    public void setTrackedNodeData(ASTNode aSTNode, TextEditGroup textEditGroup) {
        if (this.trackedNodes == null) {
            this.trackedNodes = new IdentityHashMap();
        }
        this.trackedNodes.put(aSTNode, textEditGroup);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (List list : this.eventLookup.values()) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                stringBuffer.append(list.get(i10).toString());
                stringBuffer.append('\n');
            }
        }
        return stringBuffer.toString();
    }
}
