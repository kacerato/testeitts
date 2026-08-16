.class public Lge/F$f$a;
.super Lge/F$f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lge/F$f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lge/F$f;


# direct methods
.method public constructor <init>(Lge/F$f;Lge/F;)V
    .locals 0

    iput-object p1, p0, Lge/F$f$a;->g:Lge/F$f;

    invoke-direct {p0, p1, p2}, Lge/F$f$b;-><init>(Lge/F$f;Lge/F;)V

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

    iget-object v0, p0, Lge/F$f$a;->g:Lge/F$f;

    iget-object v0, v0, Lge/F$f;->c:Lge/F;

    iget-object v0, v0, Lge/F;->v:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
