.class public Lcom/ardor3d/input/logical/DummyKeyboardWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/input/KeyboardWrapper;


# static fields
.field public static final INSTANCE:Lcom/ardor3d/input/logical/DummyKeyboardWrapper;


# instance fields
.field empty:Lcom/google/common/collect/g2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g2<",
            "Lcom/ardor3d/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ardor3d/input/logical/DummyKeyboardWrapper;

    invoke-direct {v0}, Lcom/ardor3d/input/logical/DummyKeyboardWrapper;-><init>()V

    sput-object v0, Lcom/ardor3d/input/logical/DummyKeyboardWrapper;->INSTANCE:Lcom/ardor3d/input/logical/DummyKeyboardWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ardor3d/input/logical/DummyKeyboardWrapper$1;

    invoke-direct {v0, p0}, Lcom/ardor3d/input/logical/DummyKeyboardWrapper$1;-><init>(Lcom/ardor3d/input/logical/DummyKeyboardWrapper;)V

    iput-object v0, p0, Lcom/ardor3d/input/logical/DummyKeyboardWrapper;->empty:Lcom/google/common/collect/g2;

    return-void
.end method


# virtual methods
.method public getEvents()Lcom/google/common/collect/g2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g2<",
            "Lcom/ardor3d/input/KeyEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/input/logical/DummyKeyboardWrapper;->empty:Lcom/google/common/collect/g2;

    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method
