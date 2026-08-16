.class public interface abstract LJh/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Loh/x;

.field public static final b:Loh/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loh/x;

    const-string v1, "0.4.0.127.0.15.1.1.13.0"

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    sput-object v0, LJh/a;->a:Loh/x;

    new-instance v0, Loh/x;

    const-string v1, "0.4.0.127.0.15.1.1.14.0"

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    sput-object v0, LJh/a;->b:Loh/x;

    return-void
.end method
