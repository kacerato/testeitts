.class public interface abstract Lii/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final t5:Loh/x;

.field public static final u5:Loh/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loh/x;

    const-string v1, "1.3.6.1.5.5.7.11.1"

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lii/f;->t5:Loh/x;

    new-instance v0, Loh/x;

    const-string v1, "1.3.6.1.5.5.7.11.2"

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lii/f;->u5:Loh/x;

    return-void
.end method
