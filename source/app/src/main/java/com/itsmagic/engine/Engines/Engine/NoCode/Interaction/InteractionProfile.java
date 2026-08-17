package com.itsmagic.engine.Engines.Engine.NoCode.Interaction;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;

/** Presets de configuracao rapida construidos sobre o mesmo InteractionRegistry. */
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
        SocketReceiver,
        PushableBox,
        DialogueNPC,
        Ladder,
        Seat,
        VehicleSeat,
        Teleporter,
        PressurePlate,
        PowerDevice
    }

    public static void applyProfile(GameObject target, ProfileType profile) {
        if (!C13317e.J(target) || profile == null) return;

        InteractionRegistry.register(target);
        InteractionRegistry.setEnabled(target, true);
        InteractionRegistry.addCapability(target, InteractionCapability.Interactable);

        switch (profile) {
            case PickupObject:
                InteractionRegistry.addCapability(target, InteractionCapability.Grabbable);
                InteractionRegistry.addCapability(target, InteractionCapability.Inspectable);
                InteractionRegistry.addCapability(target, InteractionCapability.Throwable);
                prompt(target, "Pegar", "hand_grab");
                InteractionRegistry.addTag(target, "pickup");
                break;

            case PhysicsDoor:
                InteractionRegistry.addCapability(target, InteractionCapability.Openable);
                InteractionRegistry.addCapability(target, InteractionCapability.Lockable);
                prompt(target, "Abrir / Fechar", "door_icon");
                InteractionRegistry.addTag(target, "door");
                InteractionRegistry.setAttribute(target, "door_mode", "Hinged");
                break;

            case SlidingDoor:
                InteractionRegistry.addCapability(target, InteractionCapability.Openable);
                InteractionRegistry.addCapability(target, InteractionCapability.Lockable);
                prompt(target, "Abrir / Fechar", "door_icon");
                InteractionRegistry.addTag(target, "door");
                InteractionRegistry.setAttribute(target, "door_mode", "Sliding");
                break;

            case ContainerChest:
                InteractionRegistry.addCapability(target, InteractionCapability.Openable);
                prompt(target, "Abrir Bau", "container");
                InteractionRegistry.addTag(target, "container");
                break;

            case ReadableNote:
                InteractionRegistry.addCapability(target, InteractionCapability.Readable);
                prompt(target, "Ler", "book_read");
                InteractionRegistry.addTag(target, "readable");
                break;

            case LightSwitch:
                InteractionRegistry.addCapability(target, InteractionCapability.Toggleable);
                prompt(target, "Ligar / Desligar", "switch");
                InteractionRegistry.addTag(target, "switch");
                InteractionRegistry.setOn(target, false);
                break;

            case AnalogValve:
                InteractionRegistry.addCapability(target, InteractionCapability.Rotatable);
                prompt(target, "Girar Valvula", "valve");
                InteractionRegistry.addTag(target, "valve");
                InteractionRegistry.setAnalogValue(target, 0f);
                break;

            case ElevatorCallButton:
                InteractionRegistry.addCapability(target, InteractionCapability.Usable);
                prompt(target, "Chamar Elevador", "elevator");
                InteractionRegistry.addTag(target, "elevator_button");
                break;

            case SocketReceiver:
                InteractionRegistry.addCapability(target, InteractionCapability.SocketReceiver);
                prompt(target, "Encaixar Objeto", "socket");
                InteractionRegistry.addTag(target, "socket");
                break;

            case PushableBox:
                InteractionRegistry.addCapability(target, InteractionCapability.Pushable);
                InteractionRegistry.addCapability(target, InteractionCapability.Pullable);
                prompt(target, "Empurrar / Puxar", "move");
                InteractionRegistry.addTag(target, "pushable");
                break;

            case DialogueNPC:
                InteractionRegistry.addCapability(target, InteractionCapability.DialogueTarget);
                prompt(target, "Conversar", "dialogue");
                InteractionRegistry.addTag(target, "npc");
                break;

            case Ladder:
                InteractionRegistry.addCapability(target, InteractionCapability.Climbable);
                prompt(target, "Subir", "ladder");
                InteractionRegistry.addTag(target, "ladder");
                break;

            case Seat:
                InteractionRegistry.addCapability(target, InteractionCapability.SitTarget);
                prompt(target, "Sentar", "seat");
                InteractionRegistry.addTag(target, "seat");
                break;

            case VehicleSeat:
                InteractionRegistry.addCapability(target, InteractionCapability.SitTarget);
                InteractionRegistry.addCapability(target, InteractionCapability.VehicleEntry);
                prompt(target, "Entrar no veiculo", "vehicle");
                InteractionRegistry.addTag(target, "vehicle_seat");
                break;

            case Teleporter:
                InteractionRegistry.addCapability(target, InteractionCapability.Usable);
                prompt(target, "Usar teleporte", "teleport");
                InteractionRegistry.addTag(target, "teleporter");
                break;

            case PressurePlate:
                InteractionRegistry.addCapability(target, InteractionCapability.Usable);
                InteractionRegistry.addTag(target, "pressure_plate");
                InteractionRegistry.setAttribute(target, "pressure_active", Boolean.FALSE);
                break;

            case PowerDevice:
                InteractionRegistry.addCapability(target, InteractionCapability.Usable);
                InteractionRegistry.addTag(target, "electrical");
                InteractionRegistry.setPowered(target, false);
                break;
        }
    }

    private static void prompt(GameObject target, String text, String icon) {
        InteractionRegistry.InteractableData data = InteractionRegistry.getOrCreate(target);
        if (data != null) {
            data.promptText = text;
            data.promptIcon = icon;
            data.attributes.put("prompt_text", text);
            data.attributes.put("prompt_icon", icon);
        }
    }
}
