.class public final Lie/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/k0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lhe/k0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lie/a;->b:I

    iput-object p1, p0, Lie/a;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lie/a;->a:[Ljava/lang/Object;

    iget v1, p0, Lie/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lie/a;->b:I

    aput-object p1, v0, v1

    const/4 p1, 0x1

    return p1
.end method
