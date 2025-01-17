#!/bin/bash

# This file will be sourced in init.sh

# https://github.com/MushroomFleet/Runpod-init

# Packages are installed after nodes so we can fix them...

DEFAULT_WORKFLOW="https://raw.githubusercontent.com/JianfeiChu/ComfyUI_Workflow/refs/heads/main/SDXL_Controlnet_LoRA.json"
#"https://raw.githubusercontent.com/ai-dock/comfyui/main/config/workflows/flux-comfyui-example.json"
APT_PACKAGES=(
    #"package-1"
    #"package-2"
)

PIP_PACKAGES=(
    #"package-1"
    #"package-2"
)

NODES=(
	"https://github.com/ltdrdata/ComfyUI-Manager"
        "https://github.com/shadowcz007/comfyui-mixlab-nodes"  #mixlab SDXL (realtime LCM)
	#"https://github.com/cubiq/ComfyUI_essentials"
	#"https://github.com/MushroomFleet/DJZ-Nodes"
	#"https://github.com/Gourieff/comfyui-reactor-node"
	"https://github.com/ltdrdata/ComfyUI-Impact-Pack"
	"https://github.com/Derfuu/Derfuu_ComfyUI_ModdedNodes"
	#"https://github.com/rgthree/rgthree-comfy"
	#"https://github.com/crystian/ComfyUI-Crystools"
	#"https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite"
	#"https://github.com/giriss/comfy-image-saver"
	"https://github.com/Fannovel16/comfyui_controlnet_aux"
	#"https://github.com/WASasquatch/was-node-suite-comfyui"
	#"https://github.com/pythongosssss/ComfyUI-Custom-Scripts"
	#"https://github.com/melMass/comfy_mtb"
	#"https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes"
	#"https://github.com/sipherxyz/comfyui-art-venture"
	#"https://github.com/twri/sdxl_prompt_styler"
	#"https://github.com/hylarucoder/comfyui-copilot"
	#"https://github.com/kijai/ComfyUI-KJNodes"
	#"https://github.com/KoreTeknology/ComfyUI-Universal-Styler"
)

WORKFLOWS=(
	"https://github.com/JianfeiChu/ComfyUI_Workflow"
)

CHECKPOINT_MODELS=(
	# SD1.5
        #"https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt"
	"https://huggingface.co/JianfeiChu/SD1_5Urbandesign/resolve/main/UrbanDesign_SD1.5_v1.safetensors"
        # SDXL
	#"https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors"
	#"https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors"
        # Flux1 dev
	"https://huggingface.co/Comfy-Org/flux1-dev/resolve/main/flux1-dev-fp8.safetensors"

)

UNET_MODELS=(
	#"https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/flux1-dev.sft"
)

CLIP_MODELS=(
	#"https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/clip_l.safetensors"
	#"https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/t5xxl_fp16.safetensors"
)

LORA_MODELS=(

#"https://huggingface.co/latent-consistency/lcm-lora-sdxl/resolve/main/pytorch_lora_weights.safetensors"
#"https://huggingface.co/JianfeiChu/EXT_001/resolve/main/EXT_001_SDXL_V1.safetensors"
#Flux
"https://huggingface.co/JianfeiChu/MP_001/resolve/main/MP_001_Flux_V1.safetensors"
"https://huggingface.co/JianfeiChu/MP_003/resolve/main/MP_003_Flux_V1.safetensors"
"https://huggingface.co/JianfeiChu/MP_004/resolve/main/MP_004_flux_V1.safetensors"
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/EXT_001_Flux_V1.safetensors"
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/EXT_002_Flux_V1.safetensors"
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/EXT_003_Flux_V1.safetensors"
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/EXT_004_Flux_V1.safetensors"
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/EXT_005_Flux_V1.safetensors"
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/EXT_006_Flux_V1.safetensors"
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/EXT_007_Flux_V1.safetensors"
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/EXT_008_Flux_V1.safetensors"
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/MP_001_Flux_V1.safetensors"
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/MP_003_Flux_V1.safetensors"
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/MP_004_flux_V1.safetensors"
#1.5
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/EXT_001_SD1.5_V2.safetensors"
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/EXT_002_SD1.5_V3.safetensors"
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/EXT_003_SD1.5_V1.safetensors"
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/EXT_004_SD1.5_V1.safetensors"
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/EXT_005_SD1.5_v1.safetensors"
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/EXT_006_SD1.5_V1.safetensors"
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/EXT_007_SD1.5_V1.safetensors"
"https://huggingface.co/JianfeiChu/LoRA/resolve/main/EXT_008_SD1.5_V1.safetensors"

)

VAE_MODELS=(
    #"https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/ae.sft"
    #"https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
)

ESRGAN_MODELS=(
    "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    #"https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    #"https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

CONTROLNET_MODELS=(
#Flux
"https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-canny-controlnet-v3.safetensors"
"https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-depth-controlnet-v3.safetensors"
"https://huggingface.co/JianfeiChu/Controlnet/resolve/main/FLUX.1-dev-ControlNet-Union-Pro.safetensors"
#"https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-hed-controlnet-v3.safetensors"
#SDXL
#"https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_canny_mid.safetensors"
#"https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_depth_mid.safetensors"
#SD1.5
"https://huggingface.co/JianfeiChu/Controlnet/resolve/main/control_v11f1p_sd15_depth.pth"
"https://huggingface.co/JianfeiChu/Controlnet/resolve/main/control_v11p_sd15_canny.pth"
"https://huggingface.co/JianfeiChu/Controlnet/resolve/main/control_v11p_sd15_seg.pth"

   
)

### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    if [[ ! -d /opt/environments/python ]]; then 
        export MAMBA_BASE=true
    fi
    source /opt/ai-dock/etc/environment.sh
    source /opt/ai-dock/bin/venv-set.sh comfyui

    if provisioning_has_valid_hf_token; then
        UNET_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/flux1-dev.safetensors")
        VAE_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/ae.safetensors")
    else
        UNET_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/flux1-schnell.safetensors")
        VAE_MODELS+=("https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/ae.safetensors")
        sed -i 's/flux1-dev\.safetensors/flux1-schnell.safetensors/g' /opt/ComfyUI/web/scripts/defaultGraph.js
    fi

    provisioning_print_header
    provisioning_get_apt_packages
    provisioning_get_nodes
    provisioning_get_pip_packages
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/ckpt" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/unet" \
        "${UNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/clip" \
        "${CLIP_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/controlnet" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/vae" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/esrgan" \
        "${ESRGAN_MODELS[@]}"
    provisioning_get_workflows
    provisioning_print_end
}

function pip_install() {
    if [[ -z $MAMBA_BASE ]]; then
            "$COMFYUI_VENV_PIP" install --no-cache-dir "$@"
        else
            micromamba run -n comfyui pip install --no-cache-dir "$@"
        fi
}

function provisioning_get_apt_packages() {
    if [[ -n $APT_PACKAGES ]]; then
            sudo $APT_INSTALL ${APT_PACKAGES[@]}
    fi
}

function provisioning_get_pip_packages() {
    if [[ -n $PIP_PACKAGES ]]; then
            pip_install ${PIP_PACKAGES[@]}
    fi
}

function provisioning_get_nodes() {
    for repo in "${NODES[@]}"; do
        dir="${repo##*/}"
        path="/opt/ComfyUI/custom_nodes/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating node: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                   pip_install -r "$requirements"
                fi
            fi
        else
            printf "Downloading node: %s...\n" "${repo}"
            git clone "${repo}" "${path}" --recursive
            if [[ -e $requirements ]]; then
                pip_install -r "${requirements}"
            fi
        fi
    done
}

function provisioning_get_workflows() {
    for repo in "${WORKFLOWS[@]}"; do
        dir=$(basename "$repo" .git)
        path="/opt/ComfyUI/user/default/workflows/${dir}"
        if [[ -d "$path" ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating workflows: %s...\n" "${repo}"
                ( cd "$path" && git pull )
            fi
        else
            printf "Cloning workflows: %s...\n" "${repo}"
            git clone "$repo" "$path"
        fi
    done
}

function provisioning_get_default_workflow() {
    if [[ -n $DEFAULT_WORKFLOW ]]; then
        workflow_json=$(curl -s "$DEFAULT_WORKFLOW")
        if [[ -n $workflow_json ]]; then
            echo "export const defaultGraph = $workflow_json;" > /opt/ComfyUI/web/scripts/defaultGraph.js
        fi
    fi
}

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    
    dir="$1"
    mkdir -p "$dir"
    shift
    arr=("$@")
    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${dir}"
        printf "\n"
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

function provisioning_has_valid_hf_token() {
    [[ -n "$HF_TOKEN" ]] || return 1
    url="https://huggingface.co/api/whoami-v2"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $HF_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

function provisioning_has_valid_civitai_token() {
    [[ -n "$CIVITAI_TOKEN" ]] || return 1
    url="https://civitai.com/api/v1/models?hidden=1&limit=1"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $CIVITAI_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

# Download from $1 URL to $2 file path
function provisioning_download() {
    if [[ -n $HF_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?huggingface\.co(/|$|\?) ]]; then
        auth_token="$HF_TOKEN"
    elif 
        [[ -n $CIVITAI_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?civitai\.com(/|$|\?) ]]; then
        auth_token="$CIVITAI_TOKEN"
    fi
    if [[ -n $auth_token ]];then
        wget --header="Authorization: Bearer $auth_token" -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
    else
        wget -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
    fi
}

provisioning_start
