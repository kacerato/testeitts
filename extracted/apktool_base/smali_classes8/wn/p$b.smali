.class public Lwn/p$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwn/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lwn/c;

.field public final d:Lwn/f;

.field public final e:Lwn/k;

.field public final f:Lwn/l;

.field public final g:Lwn/h;

.field public final h:Lwn/N;


# direct methods
.method public constructor <init>(IILwn/h;Lwn/c;Lwn/f;Lwn/k;Lwn/l;Lwn/N;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tileX",
            "tileZ",
            "solid",
            "chf",
            "cs",
            "pmesh",
            "dmesh",
            "ctx"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lwn/p$b;->a:I

    iput p2, p0, Lwn/p$b;->b:I

    iput-object p3, p0, Lwn/p$b;->g:Lwn/h;

    iput-object p4, p0, Lwn/p$b;->c:Lwn/c;

    iput-object p5, p0, Lwn/p$b;->d:Lwn/f;

    iput-object p6, p0, Lwn/p$b;->e:Lwn/k;

    iput-object p7, p0, Lwn/p$b;->f:Lwn/l;

    iput-object p8, p0, Lwn/p$b;->h:Lwn/N;

    return-void
.end method


# virtual methods
.method public a()Lwn/c;
    .locals 1

    iget-object v0, p0, Lwn/p$b;->c:Lwn/c;

    return-object v0
.end method

.method public b()Lwn/f;
    .locals 1

    iget-object v0, p0, Lwn/p$b;->d:Lwn/f;

    return-object v0
.end method

.method public c()Lwn/k;
    .locals 1

    iget-object v0, p0, Lwn/p$b;->e:Lwn/k;

    return-object v0
.end method

.method public d()Lwn/l;
    .locals 1

    iget-object v0, p0, Lwn/p$b;->f:Lwn/l;

    return-object v0
.end method

.method public e()Lwn/h;
    .locals 1

    iget-object v0, p0, Lwn/p$b;->g:Lwn/h;

    return-object v0
.end method

.method public f()Lwn/N;
    .locals 1

    iget-object v0, p0, Lwn/p$b;->h:Lwn/N;

    return-object v0
.end method
