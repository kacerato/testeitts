.class public final Ljg/J$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljg/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Ljg/J;
    .annotation build LLf/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/J<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:J
    .annotation build LLf/g;
    .end annotation
.end field

.field public final d:Ljava/lang/Object;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Lyf/f;
    .annotation build LLf/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyf/f<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljg/J;JLjava/lang/Object;Lyf/f;)V
    .locals 0
    .param p1    # Ljg/J;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/J<",
            "*>;J",
            "Ljava/lang/Object;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljg/J$a;->b:Ljg/J;

    iput-wide p2, p0, Ljg/J$a;->c:J

    iput-object p4, p0, Ljg/J$a;->d:Ljava/lang/Object;

    iput-object p5, p0, Ljg/J$a;->e:Lyf/f;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Ljg/J$a;->b:Ljg/J;

    invoke-static {v0, p0}, Ljg/J;->o(Ljg/J;Ljg/J$a;)V

    return-void
.end method
