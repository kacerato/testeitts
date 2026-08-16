.class public Lge/g$f$a;
.super Lge/g$f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lge/g$f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lge/g$f;


# direct methods
.method public constructor <init>(Lge/g$f;Lge/g;)V
    .locals 0

    iput-object p1, p0, Lge/g$f$a;->g:Lge/g$f;

    invoke-direct {p0, p1, p2}, Lge/g$f$b;-><init>(Lge/g$f;Lge/g;)V

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

    iget-object v0, p0, Lge/g$f$a;->g:Lge/g$f;

    iget-object v0, v0, Lge/g$f;->c:Lge/g;

    iget-object v0, v0, Lge/g;->v:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
