.class public final Lle/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/k0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lle/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe/k0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lle/c;


# direct methods
.method public constructor <init>(Lle/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lle/c$b;->b:Lle/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lle/c$b;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lle/c;Lle/c$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lle/c$b;-><init>(Lle/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget v0, p0, Lle/c$b;->a:I

    invoke-static {p1}, LVd/b;->f(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lle/c$b;->a:I

    const/4 p1, 0x1

    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lle/c$b;->a:I

    return v0
.end method
