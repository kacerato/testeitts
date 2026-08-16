.class public Lle/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/S;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lle/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public final b:[Ljava/lang/Object;

.field public final c:Lhe/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhe/k0<",
            "-TE;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lle/h;


# direct methods
.method public constructor <init>(Lle/h;[Ljava/lang/Object;Lhe/k0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Lhe/k0<",
            "-TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lle/h$c;->d:Lle/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lle/h$c;->a:Z

    iput-object p2, p0, Lle/h$c;->b:[Ljava/lang/Object;

    iput-object p3, p0, Lle/h$c;->c:Lhe/k0;

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 2

    iget-object v0, p0, Lle/h$c;->c:Lhe/k0;

    iget-object v1, p0, Lle/h$c;->b:[Ljava/lang/Object;

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Lhe/k0;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
