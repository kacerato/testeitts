package com.itsmagic.engine.Engines.Engine.NoCode.Interaction;

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
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Physics.ReturnObjectToOriginNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Physics.ThrowObjectNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.SendInteractionEventNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.SetInteractableNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.ShowInteractionPromptNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Conditions.Interaction.CanInteractNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Conditions.Interaction.IsLockedNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Conditions.Interaction.TargetHasCapabilityNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Interaction.OnFocusEnterNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Interaction.OnFocusExitNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Interaction.OnInteractHeldNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Interaction.OnInteractPressedNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Interaction.OnInteractionEventNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Queries.Interaction.GetInteractionDistanceNode;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Queries.Interaction.GetInteractionTargetNode;

/**
 * Inicializador e registrador central dos nós do sistema de interação.
 * Carrega todas as classes de nós para ativar seus blocos static { o.a(new NodeFactory()); }.
 */
public class InteractionNodeRegistry {

    private static boolean initialized = false;

    public static final Class<?>[] INTERACTION_NODE_CLASSES = new Class<?>[]{
        // Queries
        GetInteractionTargetNode.class,
        GetInteractionDistanceNode.class,

        // Events
        OnFocusEnterNode.class,
        OnFocusExitNode.class,
        OnInteractPressedNode.class,
        OnInteractHeldNode.class,
        OnInteractionEventNode.class,

        // Conditions
        CanInteractNode.class,
        TargetHasCapabilityNode.class,
        IsLockedNode.class,

        // Actions / Core
        SetInteractableNode.class,
        SendInteractionEventNode.class,
        ShowInteractionPromptNode.class,
        HideInteractionPromptNode.class,
        HighlightObjectNode.class,

        // Physics
        GrabObjectNode.class,
        DropObjectNode.class,
        ThrowObjectNode.class,
        ReturnObjectToOriginNode.class,

        // Mechanisms
        DoorNode.class,
        ValveNode.class,
        ButtonNode.class,
        ElevatorNode.class,

        // Inventory / Sockets
        UseItemOnTargetNode.class,
        SnapToSocketNode.class
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
}
