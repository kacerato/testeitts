.class public Lcom/ardor3d/input/KeyboardState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOTHING:Lcom/ardor3d/input/KeyboardState;


# instance fields
.field private final _keyEvent:Lcom/ardor3d/input/KeyEvent;

.field private final _keysDown:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/input/Key;",
            ">;"
        }
    .end annotation
.end field

.field private final _keysDownView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ardor3d/input/Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/ardor3d/input/KeyboardState;

    const-class v1, Lcom/ardor3d/input/Key;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lcom/ardor3d/input/KeyEvent;->NOTHING:Lcom/ardor3d/input/KeyEvent;

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/input/KeyboardState;-><init>(Ljava/util/EnumSet;Lcom/ardor3d/input/KeyEvent;)V

    sput-object v0, Lcom/ardor3d/input/KeyboardState;->NOTHING:Lcom/ardor3d/input/KeyboardState;

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;Lcom/ardor3d/input/KeyEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/input/Key;",
            ">;",
            "Lcom/ardor3d/input/KeyEvent;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/input/KeyboardState;->_keysDown:Ljava/util/EnumSet;

    iput-object p2, p0, Lcom/ardor3d/input/KeyboardState;->_keyEvent:Lcom/ardor3d/input/KeyEvent;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/input/KeyboardState;->_keysDownView:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getKeyEvent()Lcom/ardor3d/input/KeyEvent;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/KeyboardState;->_keyEvent:Lcom/ardor3d/input/KeyEvent;

    return-object v0
.end method

.method public getKeysDown()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ardor3d/input/Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/input/KeyboardState;->_keysDownView:Ljava/util/Set;

    return-object v0
.end method

.method public getKeysHeldSince(Lcom/ardor3d/input/KeyboardState;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/input/KeyboardState;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/input/Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/input/KeyboardState;->_keysDown:Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    iget-object p1, p1, Lcom/ardor3d/input/KeyboardState;->_keysDown:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getKeysPressedSince(Lcom/ardor3d/input/KeyboardState;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/input/KeyboardState;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/input/Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/input/KeyboardState;->_keysDown:Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    iget-object p1, p1, Lcom/ardor3d/input/KeyboardState;->_keysDown:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getKeysReleasedSince(Lcom/ardor3d/input/KeyboardState;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/input/KeyboardState;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/input/Key;",
            ">;"
        }
    .end annotation

    iget-object p1, p1, Lcom/ardor3d/input/KeyboardState;->_keysDown:Ljava/util/EnumSet;

    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p1

    iget-object v0, p0, Lcom/ardor3d/input/KeyboardState;->_keysDown:Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public varargs isAllDown([Lcom/ardor3d/input/Key;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/ardor3d/input/KeyboardState;->_keysDown:Ljava/util/EnumSet;

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public varargs isAtLeastOneDown([Lcom/ardor3d/input/Key;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/ardor3d/input/KeyboardState;->_keysDown:Ljava/util/EnumSet;

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isDown(Lcom/ardor3d/input/Key;)Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/KeyboardState;->_keysDown:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyboardState{_keysDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/input/KeyboardState;->_keysDown:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _keyEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/input/KeyboardState;->_keyEvent:Lcom/ardor3d/input/KeyEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
