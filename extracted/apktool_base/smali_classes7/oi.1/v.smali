.class public Loi/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loi/k;


# static fields
.field public static final b:Loh/x;


# instance fields
.field public final a:Loh/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lwh/b;->d:Loh/x;

    sput-object v0, Loi/v;->b:Loh/x;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Loh/M0;

    invoke-direct {v0, p1}, Loh/M0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Loi/v;->a:Loh/Q;

    return-void
.end method

.method public constructor <init>(Loh/Q;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loi/v;->a:Loh/Q;

    return-void
.end method


# virtual methods
.method public getType()Loh/x;
    .locals 1

    sget-object v0, Loi/v;->b:Loh/x;

    return-object v0
.end method

.method public getValue()Loh/g;
    .locals 1

    iget-object v0, p0, Loi/v;->a:Loh/Q;

    return-object v0
.end method
