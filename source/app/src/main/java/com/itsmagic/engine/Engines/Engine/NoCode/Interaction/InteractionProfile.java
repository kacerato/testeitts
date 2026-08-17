package com.itsmagic.engine.Engines.Engine.NoCode.Interaction;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;

/**
 * Presets e perfis prontos de interacao para configuracao rapida (1-click setup).
 */
public class InteractionProfile {

    public enum ProfileType {
        PickupObject,
        PhysicsDoor,
        SlidingDoor,
        ContainerChest,
        ReadableNote,
        LightSwitch,
        AnalogValve,
        ElevatorCallButton,
        SocketReceiver
    }

    public static void applyProfile(GameObject target, ProfileType profile) {
        if (!C13317e.J(target) || profile == null) return;

        InteractionRegistry.register(target);
        InteractionRegistry.setEnabled(target, true);

        switch (profile) {
            case PickupObject:
                InteractionRegistry.addCapability(target, InteractionCapability.Interactable);
                InteractionRegistry.addCapability(target, InteractionCapability.Grabbable);
                InteractionRegistry.addCapability(target, InteractionCapability.Inspectable);
                InteractionRegistry.addCapability(target, InteractionCapability.Throwable);
                InteractionRegistry.setAttribute(target, "prompt_text", "Pegar");
                InteractionRegistry.setAttribute(target, "prompt_icon", "hand_grab");
                break;

            case PhysicsDoor:
            case SlidingDoor:
                InteractionRegistry.addCapability(target, InteractionCapability.Interactable);
                InteractionRegistry.addCapability(target, InteractionCapability.Openable);
                InteractionRegistry.addCapability(target, InteractionCapability.Lockable);
                InteractionRegistry.setAttribute(target, "prompt_text", "Abrir / Fechar");
                InteractionRegistry.setAttribute(target, "prompt_icon", "door_icon");
                break;

            case ContainerChest:
                InteractionRegistry.addCapability(target, InteractionCapability.Interactable);
                InteractionRegistry.addCapability(target, InteractionCapability.Openable);
                InteractionRegistry.setAttribute(target, "prompt_text", "Abrir Bau");
                break;

            case ReadableNote:
                InteractionRegistry.addCapability(target, InteractionCapability.Interactable);
                InteractionRegistry.addCapability(target, InteractionCapability.Readable);
                InteractionRegistry.setAttribute(target, "prompt_text", "Ler Nota");
                InteractionRegistry.setAttribute(target, "prompt_icon", "book_read");
                break;

            case LightSwitch:
                InteractionRegistry.addCapability(target, InteractionCapability.Interactable);
                InteractionRegistry.addCapability(target, InteractionCapability.Toggleable);
                InteractionRegistry.setAttribute(target, "prompt_text", "Ligar / Desligar");
                break;

            case AnalogValve:
                InteractionRegistry.addCapability(target, InteractionCapability.Interactable);
                InteractionRegistry.addCapability(target, InteractionCapability.Rotatable);
                InteractionRegistry.setAttribute(target, "prompt_text", "Girar Valvula");
                break;

            case ElevatorCallButton:
                InteractionRegistry.addCapability(target, InteractionCapability.Interactable);
                InteractionRegistry.addCapability(target, InteractionCapability.Usable);
                InteractionRegistry.setAttribute(target, "prompt_text", "Chamar Elevador");
                break;

            case SocketReceiver:
                InteractionRegistry.addCapability(target, InteractionCapability.Interactable);
                InteractionRegistry.addCapability(target, InteractionCapability.SocketReceiver);
                InteractionRegistry.setAttribute(target, "prompt_text", "Encaixar Objeto");
                break;
        }
    }
}
