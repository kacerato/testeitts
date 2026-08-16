.class public interface abstract Lph/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Loh/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loh/x;

    const-string v1, "1.2.250.1.223.101.256.1"

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lph/b;->a:Loh/x;

    return-void
.end method
