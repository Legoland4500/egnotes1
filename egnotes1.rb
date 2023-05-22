joke = "C:/Users/davis_lepisto/Downloads/tricktreat.wav"

use_bpm 82
use_synth :piano
note = [:d5,:b4,:a4,:d5,:d5,:b4,:b4]

live_loop :caaspp do
  n = 0
  7.times do
    play (note[n])
    sleep 1/4.0
    n = n + 1
  end
  sample joke, amp: 2, 
  stop
end

sleep 2

live_loop :intro do
  7.times do
    sample :bd_zum
    sleep 1.25
  end
  stop
end

sleep 10


use_bpm 143

define :threes do |a, b, c|
  play a, sustain: 0.5, amp: 3
  play b, sustain: 0.5, amp: 3
  play c, sustain: 0.5, amp: 3
end

live_loop :synth2 do
  2.times do
    2.times do
      use_synth :kalimba
      threes :e3, :g3, :b3
      sleep 1.5
      threes :e3, :g3, :b3
      sleep 0.5
      threes :e3, :g3, :b3
      sleep 2.0
    end
    2.times do
      use_synth :kalimba
      threes :d3, :e3, :b3
      sleep 1.5
      threes :d3, :e3, :b3
      sleep 0.5
      threes :d3, :e3, :b3
      sleep 2.0
    end
  end
  stop
end

live_loop :drum do
  11.times do
    sample :bd_zum
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_snare_soft
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :bd_zum
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :bd_zum
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_snare_soft
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
  end
  sample :drum_roll, sustain: 2
  sample joke, amp: 2
  stop
end

live_loop :tippy do
  5.times do
    sleep 6
    8.times do
      sleep 1/4.0
      sample :elec_tick, amp: 5
    end
  end
  stop
end

sleep 40

use_synth :prophet

play :f5
sleep 1/2.0
play :f5
sleep 1/2.0
play :a5
sleep 1/2.0
play :b5
sleep 1/2.0
#4
play :c6
sleep 1/2.0
play :b5
sleep 1/2.0
play :a5
sleep 1/2.0
play :f5
sleep 1
#4
play :f5
sleep 1/2.0
play :a5
sleep 1/2.0
play :b5
sleep 1/2.0
#3
play :c6
sleep 1/2.0
play :b5
sleep 1/2.0
play :a5
sleep 1/2.0
#3 end 1

play :f4
sleep 1/2.0
play :f4
sleep 1/2.0
play :a4
sleep 1/2.0
play :b4
sleep 1/2.0
#4
play :c5
sleep 1/2.0
play :b4
sleep 1/2.0
play :a4
sleep 1/2.0
play :f4
sleep 1
#4
play :f4
sleep 1/2.0
play :a4
sleep 1/2.0
play :b4
sleep 1/2.0
#3
play :c5
sleep 1/2.0
