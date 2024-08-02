# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

programs = Program.create([
    {name: "Worship Leader Training", description: "- Curriculum covering leadership skills, theological understanding, song selection, and spiritual formation. - Practical workshops and mentoring sessions to develop practical skills and spiritual maturity.", image_url: "https://media.istockphoto.com/id/172730717/photo/singer-silhouette.jpg?s=612x612&w=0&k=20&c=2rTjofRZ4mBgxSx7XawTp0I5zosiMupWNKlGlR_bCQ0="},
    {name: "Backup Vocalist Recruitment & Training", description: "- Recruitment efforts targeting individuals with a passion for singing and a desire to serve in worship ministry. - Training curriculum covering vocal technique, harmonization, spiritual formation, and teamwork principles.", image_url: "https://media.istockphoto.com/id/1152043152/photo/one-man-rock-musician-singing-tensely-on-a-microphone.jpg?s=612x612&w=0&k=20&c=SXoJJ-LqVZqx0BaKXGMHw4OVPPo52-iJi7J0sOqRRTw="},
    {name: "Media Volunteer Training", description: "- Training in media production, presentation software, and visual storytelling techniques. - Instruction on capturing and conveying the worship experience through video, graphics, and stage design.", image_url: "https://media.istockphoto.com/id/1191264566/photo/video-camera-with-touchscreen.jpg?s=612x612&w=0&k=20&c=pZz2qaEgvZTopIVsdRuhLhBOjgW4mgNIiHhLf0JImNw="},
    {name: "Sound Engineering", description: "- Hands-on experience and mentorship opportunities to enhance musicianship and sound quality.", image_url: "https://media.istockphoto.com/id/1384233241/photo/sound-recording-studio-mixing-desk-with-engineer-or-music-producer.jpg?s=612x612&w=0&k=20&c=SK0n5Cv3Pfb9FRfMtA-lJGTR_sO5T9BIcznnargPlB0="},
    {name: "Instrumentalists", description: "- Specialized instruction in musical proficiency, technical skills, and audio engineering techniques.", image_url: "https://media.istockphoto.com/id/1480868840/photo/rocking-to-the-beat-silhouettes-on-stage.jpg?s=612x612&w=0&k=20&c=VgU7cTJ2B9LM_Gn4vhMx3rfXH9w0B_lSNr1Ag6xCSy4=",
     categories_attributes: [
        {name: "Solo Guitar", description: "Practical instructions Learning aimed to play scales and identifying where each note falls on the fretboard", image_url: "https://media.istockphoto.com/id/1371047758/photo/indie-rock-guitarist-playing-guitar-in-a-live-show-with-stage-lights.jpg?s=612x612&w=0&k=20&c=A-FuVENICxkZTvwBEMf07pMewZQ2eLKujutKbnXPogU="},
        {name: "Bass Guitar", description: "Practical Learning with a focus on the bass guitar.", image_url: 'https://media.istockphoto.com/id/651209608/photo/close-up-photo-of-bass-guitar-player.jpg?s=612x612&w=0&k=20&c=IFJb9cCK_ODOrdYXd1_3Y_aoXwi0oimAAXfsmwen4Y4='},
        {name: "Drummer", description: "The Program is  designed to build your skills and techniques, enabling you to become a great drummer over a short period of time.", image_url: 'https://media.istockphoto.com/id/1400528967/photo/cropped-image-of-a-musician-playing-drum-set-on-the-stage.jpg?s=612x612&w=0&k=20&c=zfjaEdWQXn75QMZafL9E6yw0VV7RPf2DF7f8b0I7Azo=' },
        {name: "Keyboardist", description: "The program equips learners with crucial guideline in playing the keyboard.", image_url: "https://media.istockphoto.com/id/1207522788/photo/musicians-are-playing-music-on-a-stage.jpg?s=612x612&w=0&k=20&c=3SNSorjkioCPIdDxjwS1w7SqDQkPEAJeiELnwgCyjvs="},

    ]}])