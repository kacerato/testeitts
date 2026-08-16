.class public Lge/O$f$a;
.super Lge/O$f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lge/O$f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lge/O$f;


# direct methods
.method public constructor <init>(Lge/O$f;Lge/O;)V
    .locals 0

    iput-object p1, p0, Lge/O$f$a;->g:Lge/O$f;

    invoke-direct {p0, p1, p2}, Lge/O$f$b;-><init>(Lge/O$f;Lge/O;)V

    return-void
.end method


# virtual methods
.method public k(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lge/O$f$a;->g:Lge/O$f;

    iget-object v0, v0, Lge/O$f;->c:Lge/O;

    iget-object v0, v0, Lge/O;->v:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
