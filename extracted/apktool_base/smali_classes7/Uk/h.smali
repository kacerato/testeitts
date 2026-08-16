.class public LUk/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSk/h;


# instance fields
.field public a:Ldk/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    iput-object v0, p0, LUk/h;->a:Ldk/f;

    return-void
.end method

.method public static synthetic b(LUk/h;)Ldk/f;
    .locals 0

    iget-object p0, p0, LUk/h;->a:Ldk/f;

    return-object p0
.end method


# virtual methods
.method public a(Lhi/b;)LSk/g;
    .locals 1

    new-instance v0, LUk/h$a;

    invoke-direct {v0, p0, p1}, LUk/h$a;-><init>(LUk/h;Lhi/b;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)LUk/h;
    .locals 1

    new-instance v0, Ldk/i;

    invoke-direct {v0, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LUk/h;->a:Ldk/f;

    return-object p0
.end method

.method public d(Ljava/security/Provider;)LUk/h;
    .locals 1

    new-instance v0, Ldk/k;

    invoke-direct {v0, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, LUk/h;->a:Ldk/f;

    return-object p0
.end method
