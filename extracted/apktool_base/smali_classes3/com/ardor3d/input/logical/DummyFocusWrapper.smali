.class public Lcom/ardor3d/input/logical/DummyFocusWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/input/FocusWrapper;


# static fields
.field public static final INSTANCE:Lcom/ardor3d/input/logical/DummyFocusWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ardor3d/input/logical/DummyFocusWrapper;

    invoke-direct {v0}, Lcom/ardor3d/input/logical/DummyFocusWrapper;-><init>()V

    sput-object v0, Lcom/ardor3d/input/logical/DummyFocusWrapper;->INSTANCE:Lcom/ardor3d/input/logical/DummyFocusWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndClearFocusLost()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 0

    return-void
.end method
