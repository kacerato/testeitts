.class public Lge/o$f$a;
.super Lge/o$f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lge/o$f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lge/o$f;


# direct methods
.method public constructor <init>(Lge/o$f;Lge/o;)V
    .locals 0

    iput-object p1, p0, Lge/o$f$a;->g:Lge/o$f;

    invoke-direct {p0, p1, p2}, Lge/o$f$b;-><init>(Lge/o$f;Lge/o;)V

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

    iget-object v0, p0, Lge/o$f$a;->g:Lge/o$f;

    iget-object v0, v0, Lge/o$f;->c:Lge/o;

    iget-object v0, v0, Lge/o;->v:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
