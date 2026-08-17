package com.itsmagic.engine.Engines.Engine.NoCode.Interaction;

import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.ExtendedGameplayNodes;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.ExtendedInteractionActionNodes;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.HideInteractionPromptNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.HighlightObjectNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Inventory.SnapToSocketNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Inventory.UseItemOnTargetNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Mechanisms.ButtonNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Mechanisms.DoorNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Mechanisms.ElevatorNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Mechanisms.ValveNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Physics.DropObjectNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Physics.GrabObjectNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Physics.InspectInteractionNodes;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Physics.ReturnObjectToOriginNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Physics.ThrowObjectNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.SendInteractionEventNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.SetInteractableNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.ShowInteractionPromptNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Conditions.Interaction.CanInteractNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Conditions.Interaction.ExtendedInteractionConditionNodes;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Conditions.Interaction.IsLockedNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Conditions.Interaction.TargetHasCapabilityNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Interaction.ExtendedInteractionEventNodes;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Interaction.OnFocusEnterNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Interaction.OnFocusExitNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Interaction.OnInteractHeldNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Interaction.OnInteractPressedNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Interaction.OnInteractionEventNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Queries.Interaction.ExtendedInteractionQueryNodes;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Queries.Interaction.GetInteractionDistanceNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Queries.Interaction.GetInteractionTargetNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Queries.Interaction.InteractionDetectionQueryNodes;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Queries.Interaction.InteractionHistoryNodes;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Queries.Interaction.InteractionSearchQueryNodes;

/** Carrega todas as classes de nodes para ativar seus factories estaticos. */
public class InteractionNodeRegistry {

    private static boolean initialized = false;

    public static final Class<?>[] INTERACTION_NODE_CLASSES = new Class<?>[]{
        // Queries / detection
        GetInteractionTargetNode.class,
        GetInteractionDistanceNode.class,
        ExtendedInteractionQueryNodes.GetInteractorNode.class,
        ExtendedInteractionQueryNodes.GetHitPositionNode.class,
        ExtendedInteractionQueryNodes.GetHitNormalNode.class,
        ExtendedInteractionQueryNodes.GetInteractionPointNode.class,
        ExtendedInteractionQueryNodes.GetPriorityNode.class,
        ExtendedInteractionQueryNodes.GetStateNode.class,
        ExtendedInteractionQueryNodes.GetHeldObjectNode.class,
        ExtendedInteractionQueryNodes.GetAnalogValueNode.class,
        ExtendedInteractionQueryNodes.GetOpenAmountNode.class,
        InteractionHistoryNodes.GetInteractionCountNode.class,
        InteractionDetectionQueryNodes.ResolveTargetNode.class,
        InteractionDetectionQueryNodes.IsTargetInViewNode.class,
        InteractionDetectionQueryNodes.HasLineOfSightNode.class,
        InteractionDetectionQueryNodes.IsRegisteredInteractableNode.class,
        InteractionSearchQueryNodes.FindInRayNode.class,
        InteractionSearchQueryNodes.FindInSphereNode.class,
        InteractionSearchQueryNodes.FindNearestNode.class,

        // Events
        OnFocusEnterNode.class,
        OnFocusExitNode.class,
        OnInteractPressedNode.class,
        OnInteractHeldNode.class,
        OnInteractionEventNode.class,
        ExtendedInteractionEventNodes.OnFocusStayNode.class,
        ExtendedInteractionEventNodes.OnInteractReleasedNode.class,
        ExtendedInteractionEventNodes.OnInteractionActionNode.class,

        // Conditions
        CanInteractNode.class,
        TargetHasCapabilityNode.class,
        IsLockedNode.class,
        ExtendedInteractionConditionNodes.IsEnabledNode.class,
        ExtendedInteractionConditionNodes.HasTagNode.class,
        ExtendedInteractionConditionNodes.IsBusyNode.class,
        ExtendedInteractionConditionNodes.IsHeldNode.class,
        ExtendedInteractionConditionNodes.IsPoweredNode.class,
        ExtendedInteractionConditionNodes.CompareStateNode.class,
        ExtendedInteractionConditionNodes.CooldownReadyNode.class,
        ExtendedInteractionConditionNodes.IsTargetInRangeNode.class,
        ExtendedInteractionConditionNodes.HasRequiredItemNode.class,
        InteractionHistoryNodes.InteractionUsedBeforeNode.class,

        // Core actions
        SetInteractableNode.class,
        SendInteractionEventNode.class,
        ShowInteractionPromptNode.class,
        HideInteractionPromptNode.class,
        HighlightObjectNode.class,
        ExtendedInteractionActionNodes.SetPriorityNode.class,
        ExtendedInteractionActionNodes.SetStateNode.class,
        ExtendedInteractionActionNodes.SetTagNode.class,
        ExtendedInteractionActionNodes.SetCapabilityNode.class,
        ExtendedInteractionActionNodes.SetBusyNode.class,
        ExtendedInteractionActionNodes.SetPoweredNode.class,
        ExtendedInteractionActionNodes.SetLockedNode.class,
        ExtendedInteractionActionNodes.SetCooldownNode.class,
        ExtendedInteractionActionNodes.SetAnalogValueNode.class,
        ExtendedInteractionActionNodes.ConfigurePromptNode.class,
        ExtendedInteractionActionNodes.SetInteractionLimitsNode.class,
        ExtendedInteractionActionNodes.SendInputActionNode.class,
        ExtendedInteractionActionNodes.ReadableNode.class,
        ExtendedInteractionActionNodes.DialogueNode.class,
        ExtendedInteractionActionNodes.MoveInteractorToSocketNode.class,

        // Physics / inspection
        GrabObjectNode.class,
        DropObjectNode.class,
        ThrowObjectNode.class,
        ReturnObjectToOriginNode.class,
        ExtendedGameplayNodes.PushPullObjectNode.class,
        ExtendedGameplayNodes.TeleportObjectNode.class,
        InspectInteractionNodes.InspectObjectNode.class,
        InspectInteractionNodes.RotateInspectedObjectNode.class,
        InspectInteractionNodes.ZoomInspectObjectNode.class,
        InspectInteractionNodes.BounceObjectNode.class,

        // Mechanisms
        DoorNode.class,
        ValveNode.class,
        ButtonNode.class,
        ElevatorNode.class,
        ExtendedGameplayNodes.PressurePlateNode.class,
        ExtendedGameplayNodes.PowerLinkNode.class,

        // Inventory / sockets
        UseItemOnTargetNode.class,
        SnapToSocketNode.class,
        ExtendedInteractionActionNodes.InventoryItemNode.class,
        ExtendedInteractionActionNodes.UnsnapSocketNode.class,
        ExtendedGameplayNodes.CombineItemsNode.class,
        ExtendedGameplayNodes.EquipItemNode.class,

        // Gameplay / puzzle / profiles / feedback
        ExtendedGameplayNodes.ApplyProfileNode.class,
        ExtendedGameplayNodes.SequenceNode.class,
        ExtendedGameplayNodes.InteractionGateNode.class,
        ExtendedGameplayNodes.ReversibleInteractionNode.class,
        ExtendedGameplayNodes.FeedbackNode.class
    };

    public static synchronized void init() {
        if (initialized) return;
        initialized = true;
        for (Class<?> nodeClass : INTERACTION_NODE_CLASSES) {
            try {
                Class.forName(nodeClass.getName());
            } catch (Throwable t) {
                t.printStackTrace();
            }
        }
    }

    public static int getRegisteredInteractionNodeCount() {
        return INTERACTION_NODE_CLASSES.length;
    }
}
