.class public final Leg/E0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Leg/D0;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leg/D0;)V
    .locals 0
    .param p1    # Leg/D0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leg/E0;->a:Leg/D0;

    return-void
.end method
