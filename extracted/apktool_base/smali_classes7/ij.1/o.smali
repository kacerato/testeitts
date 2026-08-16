.class public Lij/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lij/h;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lij/o;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lij/n;
    .locals 4

    new-instance v0, Lij/n;

    iget-object v1, p0, Lij/o;->a:Ljava/lang/String;

    iget-object v2, p0, Lij/o;->c:Ljava/lang/String;

    iget-object v3, p0, Lij/o;->b:Lij/h;

    invoke-direct {v0, v1, v2, v3}, Lij/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lij/h;)V

    return-object v0
.end method

.method public b(Lij/h;)Lij/o;
    .locals 0

    iput-object p1, p0, Lij/o;->b:Lij/h;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lij/o;
    .locals 0

    iput-object p1, p0, Lij/o;->c:Ljava/lang/String;

    return-object p0
.end method
