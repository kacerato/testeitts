.class public Lcom/ardor3d/input/KeyEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOTHING:Lcom/ardor3d/input/KeyEvent;


# instance fields
.field private final _key:Lcom/ardor3d/input/Key;

.field private final _keyChar:C

.field private final _state:Lcom/ardor3d/input/KeyState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/ardor3d/input/KeyEvent;

    sget-object v1, Lcom/ardor3d/input/Key;->UNKNOWN:Lcom/ardor3d/input/Key;

    sget-object v2, Lcom/ardor3d/input/KeyState;->UP:Lcom/ardor3d/input/KeyState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ardor3d/input/KeyEvent;-><init>(Lcom/ardor3d/input/Key;Lcom/ardor3d/input/KeyState;C)V

    sput-object v0, Lcom/ardor3d/input/KeyEvent;->NOTHING:Lcom/ardor3d/input/KeyEvent;

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/input/Key;Lcom/ardor3d/input/KeyState;C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/input/KeyEvent;->_key:Lcom/ardor3d/input/Key;

    iput-object p2, p0, Lcom/ardor3d/input/KeyEvent;->_state:Lcom/ardor3d/input/KeyState;

    iput-char p3, p0, Lcom/ardor3d/input/KeyEvent;->_keyChar:C

    return-void
.end method


# virtual methods
.method public getKey()Lcom/ardor3d/input/Key;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/KeyEvent;->_key:Lcom/ardor3d/input/Key;

    return-object v0
.end method

.method public getKeyChar()C
    .locals 1

    iget-char v0, p0, Lcom/ardor3d/input/KeyEvent;->_keyChar:C

    return v0
.end method

.method public getState()Lcom/ardor3d/input/KeyState;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/KeyEvent;->_state:Lcom/ardor3d/input/KeyState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyEvent{_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/input/KeyEvent;->_key:Lcom/ardor3d/input/Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/input/KeyEvent;->_state:Lcom/ardor3d/input/KeyState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _keyChar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/ardor3d/input/KeyEvent;->_keyChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
