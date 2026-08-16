.class public final LPe/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSe/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LPe/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:[Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lhn/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final b:[Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lhn/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic c:LPe/o;


# direct methods
.method public constructor <init>(LPe/o;[Lhn/c;[Lhn/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lhn/c<",
            "-TT;>;[",
            "Lhn/c<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, LPe/o$b;->c:LPe/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LPe/o$b;->a:[Lhn/c;

    iput-object p3, p0, LPe/o$b;->b:[Lhn/c;

    return-void
.end method


# virtual methods
.method public a(ILBe/J$c;)V
    .locals 3

    iget-object v0, p0, LPe/o$b;->c:LPe/o;

    iget-object v1, p0, LPe/o$b;->a:[Lhn/c;

    iget-object v2, p0, LPe/o$b;->b:[Lhn/c;

    invoke-virtual {v0, p1, v1, v2, p2}, LPe/o;->V(I[Lhn/c;[Lhn/c;LBe/J$c;)V

    return-void
.end method
