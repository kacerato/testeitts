.class public final Lgg/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/y1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Leg/y1;"
    }
.end annotation


# instance fields
.field public final b:Leg/q;
    .annotation build LLf/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/q<",
            "Lgg/p<",
            "+TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leg/q;)V
    .locals 0
    .param p1    # Leg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/q<",
            "-",
            "Lgg/p<",
            "+TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgg/C;->b:Leg/q;

    return-void
.end method


# virtual methods
.method public t(Lmg/P;I)V
    .locals 1
    .param p1    # Lmg/P;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmg/P<",
            "*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lgg/C;->b:Leg/q;

    invoke-virtual {v0, p1, p2}, Leg/q;->t(Lmg/P;I)V

    return-void
.end method
