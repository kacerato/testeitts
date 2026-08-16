.class public final Leg/Y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/m0;
.implements Leg/v;


# annotations
.annotation build Leg/F0;
.end annotation


# static fields
.field public static final b:Leg/Y0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leg/Y0;

    invoke-direct {v0}, Leg/Y0;-><init>()V

    sput-object v0, Leg/Y0;->b:Leg/Y0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)Z
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getParent()Leg/K0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "NonDisposableHandle"

    return-object v0
.end method
