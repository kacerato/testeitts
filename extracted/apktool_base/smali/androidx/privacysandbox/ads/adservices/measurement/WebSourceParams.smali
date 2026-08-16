.class public final Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams$Companion;


# instance fields
.field private final debugKeyAllowed:Z

.field private final registrationUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;->Companion:Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Z)V
    .locals 1

    const-string v0, "registrationUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;->registrationUri:Landroid/net/Uri;

    iput-boolean p2, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;->debugKeyAllowed:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;->registrationUri:Landroid/net/Uri;

    check-cast p1, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;->registrationUri:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;->debugKeyAllowed:Z

    iget-boolean p1, p1, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;->debugKeyAllowed:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getDebugKeyAllowed()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;->debugKeyAllowed:Z

    return v0
.end method

.method public final getRegistrationUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;->registrationUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;->registrationUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;->debugKeyAllowed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebSourceParams { RegistrationUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;->registrationUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", DebugKeyAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;->debugKeyAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
