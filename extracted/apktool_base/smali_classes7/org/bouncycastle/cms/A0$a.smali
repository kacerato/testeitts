.class public final Lorg/bouncycastle/cms/A0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/A0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Lorg/bouncycastle/cms/A0$a;

.field public static final d:Lorg/bouncycastle/cms/A0$a;

.field public static final e:Lorg/bouncycastle/cms/A0$a;

.field public static final f:Lorg/bouncycastle/cms/A0$a;

.field public static final g:Lorg/bouncycastle/cms/A0$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lhi/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/cms/A0$a;

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->w1:Loh/x;

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v2, "HMacSHA1"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/cms/A0$a;-><init>(Ljava/lang/String;Lhi/b;)V

    sput-object v0, Lorg/bouncycastle/cms/A0$a;->c:Lorg/bouncycastle/cms/A0$a;

    new-instance v0, Lorg/bouncycastle/cms/A0$a;

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->x1:Loh/x;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v2, "HMacSHA224"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/cms/A0$a;-><init>(Ljava/lang/String;Lhi/b;)V

    sput-object v0, Lorg/bouncycastle/cms/A0$a;->d:Lorg/bouncycastle/cms/A0$a;

    new-instance v0, Lorg/bouncycastle/cms/A0$a;

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->z1:Loh/x;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v2, "HMacSHA256"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/cms/A0$a;-><init>(Ljava/lang/String;Lhi/b;)V

    sput-object v0, Lorg/bouncycastle/cms/A0$a;->e:Lorg/bouncycastle/cms/A0$a;

    new-instance v0, Lorg/bouncycastle/cms/A0$a;

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->A1:Loh/x;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v2, "HMacSHA384"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/cms/A0$a;-><init>(Ljava/lang/String;Lhi/b;)V

    sput-object v0, Lorg/bouncycastle/cms/A0$a;->f:Lorg/bouncycastle/cms/A0$a;

    new-instance v0, Lorg/bouncycastle/cms/A0$a;

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->B1:Loh/x;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v2, "HMacSHA512"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/cms/A0$a;-><init>(Ljava/lang/String;Lhi/b;)V

    sput-object v0, Lorg/bouncycastle/cms/A0$a;->g:Lorg/bouncycastle/cms/A0$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lhi/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/A0$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/cms/A0$a;->b:Lhi/b;

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/A0$a;->b:Lhi/b;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/A0$a;->a:Ljava/lang/String;

    return-object v0
.end method
